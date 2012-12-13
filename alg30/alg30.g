// A compiler that translates alg30 programs into Jasmin (Java assemble-> Nr).
// The symbol table is created after parsing (not during parsing).
// Variables may be used before they are declared.

root
  root1() // "with    bells and whistles" for development
  // root2() // "without bells and whistles" for test and production

proc    root1()
  rule  root1():
        initialise()
        "-------------------------------\n"
        "Error messages from the parser:\n"
        CS_Cmds(-> SynTree)
        "No errors found!\n"
        "-------------------------------\n"
        "Additional error messages:\n"
        check10(SynTree)
        "No additonal error messages\n"
        "-------------------------------\n"
        "SynTree:\n" pCmds(SynTree)
        "-------------------------------\n"
        // Translate the SynTree and output the result to a .j file:
        outAll(SynTree)

proc    root2()
  rule  root2():
        initialise()
        CS_Cmds(-> SynTree)
        check10(SynTree)
        outAll(SynTree)

// Global variables ////////////////////////////////////////////////////////////

// Each source identifier has to be translated to a target identifier:
// Target identifiers are natural numbers starting with 1.
data NextTargetID(-> int)

// The symbol table SymTab maps source identifiers of type string
// to their meaning of type Meaning
type Meaning m(Type:AS_Type, TargetID:int)
data SymTab(string -> Meaning)

// Global variables have to be initialized before they are used:
proc    initialise()
  rule  initialise():
        Set-NextTargetID(1)

// Abstract syntax types ///////////////////////////////////////////////////////

type AS_Cmd
  read(Input:string)
  write(AS_Exp)
  writeln(AS_Exp)
  vardec(Ident:string, AS_Type, AS_Exp)
  assign(Ident:string, AS_Exp)

type AS_Exp
  lit(AS_Val)     // Literal
  varapp(string)  // Variable applied

type AS_Val
  stringVal(string)
  intVal(int)
  boolVal(int)

type AS_Type
  int()
  bool()
  string()

// Concrete syntax to abstract syntax (syntax checks of type 3 and 2) //////////

// An alg source program has to contain at least one command
phrase  CS_Cmds(-> AS_Cmd[])
  rule  CS_Cmds(-> AS_Cmd[ACMD]):
        CS_Cmd (-> ACMD) ";"
  rule  CS_Cmds(-> AS_Cmd[ACMD::ACMDS]):
        CS_Cmd (-> ACMD) ";"
        CS_Cmds(-> ACMDS)

// Parse commands like read, write and writeln
phrase  CS_Cmd(-> AS_Cmd)
  rule  CS_Cmd(-> read(TEXT))   : "read"    "(" CS_String(-> TEXT) ")"
  rule  CS_Cmd(-> write(EXP))   : "write"   "(" CS_Exp(-> EXP) ")"
  rule  CS_Cmd(-> writeln(EXP)) : "writeln" "(" CS_Exp(-> EXP) ")"
  rule  CS_Cmd(-> vardec(ID, T, EXP) : CS_Decl(-> ID, T, EXP)
  rule  CS_Cmd(-> vardec(ID, T, EXP) : CS_DeclInit(-> ID, T, EXP)
  rule  CS_Cmd(-> assign(ID, EXP)    : CS_Assign(-> ID, EXP)

// Variable declarations without explicit initialization. Such Variables
// will implicitly be initialized with 0 or "" respectively
phrase  CS_Decl(-> Ident:string, AS_Type, AS_Exp)
  rule  CS_Decl(-> ID,   bool(), lit(boolVal(0))   ) : "bool"   CS_Ident(-> ID)
  rule  CS_Decl(-> ID,    int(), lit(intVal(0))    ) : "int"    CS_Ident(-> ID)
  rule  CS_Decl(-> ID, string(), lit(stringVal(""))) : "string" CS_Ident(-> ID)

// Variable declarations with explicit initialization
phrase  CS_DeclInit(-> Ident:string, AS_Type, AS_Exp)
  rule  CS_DeclInit(-> ID, T, EXP) : CS_Decl(-> ID, T, _) ":=" CS_Exp(-> EXP)

phrase  CS_Assign(-> Ident:string, AS_Exp)
  rule  CS_Assign(-> ID, EXP) : CS_Ident(-> ID) ":=" CS_Exp(-> EXP)

// Parse expressions like strings, booleans, ints and identifiers
phrase  CS_Exp(-> AS_Exp)
  rule  CS_Exp(-> lit(stringVal(STR))) : CS_String(-> STR)
  rule  CS_Exp(-> lit(intVal(INT)))    : CS_Natural(-> INT)
  rule  CS_Exp(-> lit(boolVal(0)))     : "false"
  rule  CS_Exp(-> lit(boolVal(1)))     : "true"
  rule  CS_Exp(-> varapp(ID))          : CS_Ident(-> ID)

// Gentle has predefined token predicates IDENT, INTEGER and STRING,
// but here we define our own to see how it can be done:
token CS_Ident(-> string)
  <<<[A-Za-z](_?[A-Za-z0-9])*>>>

token CS_Natural(-> int)
  <<<[0-9]+>>>

// The double quotes around a string literal (e.g. "Hello") are only
// concrete syntax, but do not belong to the value of the literal.
// Therefore they have to be removed with a Value Converter For Tokens:
token CS_String(-> string)
  <<<\"([^\"]|\\\")*\">>>
  with RemoveQuotes

// Removes the first and the last char from s1 to get s2
proc    RemoveQuotes(s1:string -> s2:string) // A Value Converter For Tokens
  rule  RemoveQuotes(Str -> Substr)
        Stringlength(Str -> Len)
        Substring(Str, 1, Len-1 -> Substr)

// Combining the following 3 whitespace definitions into 1 is possible,
// but may decrease readability.

// Comments starting with // and extending to the end of the current line
// The dot . matches any character except newline \n
whitespace
  <<<//.*>>>

// Comments starting and ending with #. Several such comments may appear
// on the same line and one such comment may span several lines.
// [^#] matches any character except # (but including newline \n)
whitespace
  <<<#[^#]+#>>>

// The above whitespace definitions switch off the standard definition.
// Therefore here we add spaces, tabs \t, newlines \n and
// carriage returns \r to the whitespace lexems:
whitespace
  <<<(\ |\t|\n|\r)>>>

////////////////////////////////////////////////////////////////////////////////

// Check for formal errors which the lexer and parser could not detect
// ("semantic errors" or "errors of type 1 and type 0")
// After finding and reporting the first such error this compiler
// will stop.
proc    check10(SynTree: AS_Cmd[])
  rule  check10(CMDS):
        checkVarDecls(CMDS)       // Is no variable declared more than once?
        checkVarApplsInCmds(CMDS) // Is every applied variable declared?

// From a syntax tree construct a symbol table and
// check for double declarations:
proc    checkVarDecls(SynTree:AS_Cmd[]) //TODO
  // Variable declarations are processed
  rule  checkVarDecls(AS_Cmd[vardec(ID, _, _)::CMDS]):
        Get-SymTab(ID -> _)
        $ID " is already declared\n"
  rule  checkVarDecls(AS_Cmd[vardec(ID, T, _)::CMDS]):
        Get-NextTargetID(-> N)
        Set-SymTab(ID, m(T, N))
        Set-NextTargetID(N+1)
        "  declare " $ID " as " pType(T) "[" $N "]\n"
  // Commands other than variable declarations are skipped
  rule  checkVarDecls(AS_Cmd[CMD::CMDS]):
        checkVarDecls(CMDS)
  rule  checkVarDecls(AS_Cmd[])

// Check whether all variables applied in a list of commands have been declared
proc    checkVarApplsInCmds(SynTree:AS_Cmd[])
  rule  checkVarApplsInCmds(AS_Cmd[CMD::CMDS]):
        checkVarApplsInCmds(CMDS)
        checkVarApplsInCmd (CMD)
  rule  checkVarApplsInCmds(AS_Cmd[]):

// Check whether all variables applied in a single command have been declared
proc    checkVarApplsInCmd(AS_Cmd)
  // TODO
  // rule  checkVarApplsInCmd(CMD):

  // The following rule is for testing only. It will be called
  // if the definition of the predicate is still incomplete
  rule  checkVarApplsInCmd(CMD):
        print "checkVarApplsInCmd has been called with CMD:"
        print CMD

// Check whether all variables applied in
// an expression have been declared:
proc    checkVarApplsInExp(AS_Exp)
  rule  checkVarApplsInExp(lit(_)):


  // The following rule is for testing only. It will be called
  // if the definition of the predicate is still incomplete
  rule  checkVarApplsInExp(EXP):
        print "checkVarApplsInExp has been called with EXP:"
        print EXP

////////////////////////////////////////////////////////////////////////////////
// Predicates to translate abstract syntax into Java assembler (Jasmin)
// and output the target program to a file:

// The predicates prelude and postlude together output a simple but
// complete Jasmin program. Anything output between the prelude and
// the postlude will be situated in the main method of that program.
proc    outPrelude(NrOfVars: int)
  rule  outPrelude(NrOfVars):
        open "Target.j"
        ";Target produced by compiler alg30                 \n"
        ";at the Beuth Hochschule, TB5-CPB,WS12/13          \n"
        ";---------------------------------                 \n"
        ".class public Target                               \n"
        ".super java/lang/Object                            \n"
        ".method public <init>()V                           \n"
        "   aload_0                                         \n"
        "   invokenonvirtual java/lang/Object/<init>()V     \n"
        "   return                                          \n"
        ".end method                                        \n"
        ".method public static main([Ljava/lang/String;)V   \n"
        ".limit stack  10                                   \n"
        ".limit locals " $NrOfVars                         "\n"
        "   ldc \"-------------------------------\"         \n"
        "   invokestatic RTS/plnString(Ljava/lang/String;)V \n"
        "   ldc \"Here we go!\"                             \n"
        "   invokestatic RTS/plnString(Ljava/lang/String;)V \n"

proc    outPostlude()
  rule  outPostlude():
        "   ldc \"That's all!\"                             \n"
        "   invokestatic RTS/plnString(Ljava/lang/String;)V \n"
        "   ldc \"-------------------------------\"         \n"
        "   invokestatic RTS/plnString(Ljava/lang/String;)V \n"
        "   return                                          \n"
        ".end method                                        \n"
        close // The file Target.j

// The next target ID is at the same time the
// number of variables declared in the alg source program:
proc    outAll(AS_Cmd[])
  rule  outAll(SynTree):
        Get-NextTargetID(-> NrOfVars)
        outPrelude(NrOfVars)
        outCmds(SynTree)
        outPostlude()

// Translates CMDS into Jasmin and outputs the result
proc    outCmds(CMDS:AS_Cmd[])
  rule  outCmds(AS_Cmd[]):
  rule  outCmds(AS_Cmd[CMD::CMDS]):
        outCmd (CMD)
        outCmds(CMDS)

// Output the translation of a single command
proc    outCmd(AS_Cmd)
  rule  outCmd(writeln(EXP)):
        "   ;--- writeln\n"
        outExp(EXP)
        {
          isString(EXP) "   invokestatic RTS/plnString(Ljava/lang/String;)V\n"
        |
          isInt(EXP)    "   invokestatic RTS/plnInt(Ljava/lang/Int;)V\n"
        |
          isBool(EXP)   "   invokestatic RTS/plnBool(Ljava/lang/Int;)V\n"
        |
          isVarapp(EXP) "   ; TODO isVarapp"
        }
  rule  outCmd(write(EXP)):
        "   ;--- write\n"
        outExp(EXP)
        {
          isString(EXP) "   invokestatic RTS/pString(Ljava/lang/String;)V\n"
        |
          isInt(EXP)    "   invokestatic RTS/pInt(Ljava/lang/Int;)V\n"
        |
          isBool(EXP)   "   invokestatic RTS/pBool(Ljava/lang/Int;)V\n"
        }
  rule  outCmd(vardec(_, _, EXP)):
        "   ;--- vardec\n"
        outExp(EXP)
        {
          isInt(EXP)    "   ;TODO int"
        }
  // The following rule is for testing only. It will be called
  // if the definition of the predicate is still incomplete
  rule  outCmd(CMD):
        print "outCmd has been called with CMD:"
        print CMD

// Output the translation of an expression
// Every expression EXP is translated into Jasmin instructions, which will
// cause the value of EXP to be placed onto the stack of the JVM.
proc    outExp(AS_Exp)
  rule  outExp(lit(AVAL)):
        {
          AVAL -> stringVal(V3) "   ldc " "\"" $V3 "\"" "\n"
        |
          AVAL -> intVal(V4)    "   ldc " "\"" $V4 "\"" "\n"
        |
          AVAL -> boolVal(V5)   "   ldc " "\"" $V5 "\"" "\n"
        }
  rule  outExp(varapp(ID)) : "; TODO identifier"
  // The following rule is for testing only. It will be called
  // if the definition of the predicate is still incomplete
  rule  outExp(EXP):
        print "outExp was called with EXP:"
        print EXP

// The following condition predicates assume, that the abstract syntax
// is fully type checked and o.k. Only under this assumption do they
// discern expressions of different types.
condition isString(AS_Exp)
  rule    isString(lit(stringVal(_)))

condition isInt(AS_Exp)
  rule    isInt(lit(intVal(_)))

condition isBool(AS_Exp)
  rule    isBool(lit(boolVal(_)))

condition isVarapp(AS_Exp)
  rule    isVarapp(varapp(_))

////////////////////////////////////////////////////////////////////////////////
// Auxiliary predicates, possibly useful for testing

// Prints the syntax tree CMDS in a format similar to a source program
proc    pCmds(CMDS: AS_Cmd[])
  rule  pCmds(AS_Cmd[]):
  rule  pCmds(AS_Cmd[CMD::CMDS]):
        pCmd (CMD)
        pCmds(CMDS)

proc    pCmd(AS_Cmd)
  rule  pCmd(CMD):
        {
          CMD -> read(SI)
          "read(" $SI ");\n"
        |
          CMD -> write(EXP)
          "write("   pExp(EXP) ");\n"
        |
          CMD -> writeln(EXP)
          "writeln(" pExp(EXP) ");\n"
        |
          CMD -> vardec(SI, T, EXP)
          pType(T) $SI " := " pExp(EXP) ";\n"
        |
          CMD -> assign(SI, EXP)
          $SI " := " pExp(EXP) ";\n"
        }
  // The following rule is for testing only. It will be called
  // if the definition of the predicate is still incomplete
  rule  pCmd(CMD):
        print "pCMD was called with CMD:"
        print CMD


proc    pType(AS_Type)
  rule  pType(TYPE):
        {
          TYPE -> int()    "int    "
        |
          TYPE -> bool()   "bool   "
        |
          TYPE -> string() "string "
        }

proc    pExp(AS_Exp)
  rule  pExp(EXP):
        {
          EXP -> lit(VAL)
          pVal(VAL)
        |
          EXP -> varapp(SI)
          $SI
        }
  // The following rule is for testing only. It will be called
  // if the definition of the predicate is still incomplete
  rule  pExp(EXP):
        print "pExp was called with EXP:"
        print EXP


proc    pVal(AS_Val)
  rule  pVal(VAL):
        {
          VAL -> intVal   (P1) $P1
        |
          VAL -> boolVal  (0)  "false"
        |
          VAL -> boolVal  (1)  "true"
        |
          VAL -> stringVal(P2) "\"" $P2 "\""
        }
