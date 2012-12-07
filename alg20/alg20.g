// -----------------------------------------------------------------------
// File alg20\spec.g
// -----------------------------------------------------------------------
// Complete syntax checking (type 3, typ 2, type 1/0) for a very simple
// source language alg20. A typical program of this language:
//
// prog dec anna, dec bert, stm anna, dec carl, stm anna, stm carl end
//
// Between prog and end there is a list of commands separated by commas.
// This list of commands may be empty (prog end).
// There are two kinds of commands: declarations and statements.
// Examples:
// The delaration   dec anna   declares the identifier anna.
// The statement    stm anna   applies  the identifier anna.
//
// The following context conditions are checked:
// CC1: An identifier may be declared at most once.
// CC2: An identifier must be declared before it ist applied.
//
// Three examples of erroneous source programs:
// prog dec anna, dec anna end  -- anna is declared more than once
// prog stm anna end            -- anna is applied without being declared
// prog stm anna, dec anna end  -- anna is applied before it is declared
// -----------------------------------------------------------------------

root
  Program(-> SynTree)
  "----------------------------------\n"
  // Output the syntax tree as a source program with comments:
  "OUTPUT:\n"
  pPROG(SynTree)
  "-----------------------------------\n"
  // Check the syntax tree for double declarations and undeclared
  // statements. Output the number of errors found:
  check10(SynTree, string[] -> _, NrOfErrors)
  "\nNr of errors found by check10: " $NrOfErrors "\n"
  "-----------------------------------\n"

// -----------------------------------------------------------------------
// Abstract syntax types:

type COMMAND
  dec(Ident: string)
  stm(Ident: string)

// A syntax tree  is a value of type COMMAND[]
//    (which is rather a list than a full blown tree).
// A symbol table is a value of type string[],
//    containing all declared identifiers.
// -----------------------------------------------------------------------
// Concrete syntax to abstract syntax (syntax checks of type 3 and 2):

phrase Program(-> SyntaxTree: COMMAND[])
  rule Program(-> CMDS) : "prog" Commands(-> CMDS) "end"

phrase Commands(-> COMMAND[])
  rule Commands(-> COMMAND[])
  rule Commands(-> COMMAND[CMD]) : Command(-> CMD)
  rule Commands(-> COMMAND[CMD::CMDS]) : Command (-> CMD) "," Commands(-> CMDS)

phrase Command(-> COMMAND)
  rule Command(-> dec(ID)) : "dec" Ident(-> ID)
  rule Command(-> stm(ID)) : "stm" Ident(-> ID)

token Ident(-> string)
  <<<[A-Za-z][A-Za-z0-9_]*>>>

// Allow as whitespace:
// - Spaces, tab \t, newline \n and carriage-return \r characters
// - Comments which start with // and extend to the end of current line:
whitespace <<<[ \t\n\r]+|//[^\n]*>>>
// ------------------------------------------------------------------------
// Additional syntax checks (type 1/0):
// An identifier has to be declared BEFORE it is applied in a statement.
// Therefore the predicate check10 traverses the SyntaxTree, building up
// a symbol table and checking for undeclared statements "in an integrated
// way".


// Checks the SyntaxTree for double declarations and for undeclared
// statements. Outputs an error message for each error found.
// Returns:
// SymTabOut, which contains all identifiers declared so far, and
// NrOfErrors, the number of errors found so far in the SyntaxTree.
proc   check10(SyntaxTree:COMMAND[], SymTabIn :string[] ->
                                     SymTabOut:string[], NrOfErrors:int)
  rule check10(COMMAND[], _ -> string[], 0)
  rule check10(COMMAND[dec(ID)::CMDS], ST1 -> ST3, NERR1+NERR2) :
       doubleDecs(ID, ST1 -> ST2, NERR1)
       check10(CMDS, ST2  -> ST3, NERR2)
  rule check10(COMMAND[stm(ID)::CMDS], ST1 -> ST2, NERR1+NERR2) :
       undeclared(ID, ST1 -> NERR1)
       check10(CMDS, ST1  -> ST2, NERR2)

// Checks if the Ident is already in SymTabIn
// (which means that Ident is declared more than once)
proc   doubleDecs(Ident: string, SymTabIn :string[] ->
                                 SymTabOut:string[], NrOfErrors: int)
  rule doubleDecs(IDENT, string[] -> string[IDENT], 0)
  rule doubleDecs(IDENT, SymTab -> SymTab, 1) : containsElem(SymTab, IDENT)
  rule doubleDecs(IDENT, SymTab -> string[IDENT::SymTab], 0)

// Checks if the Ident is in the SymTab (if not, Ident is undeclared)
proc   undeclared(Ident: string, SymTab:string[] -> NrOfErrors: int)
  rule undeclared(IDENT, string[] -> 1)
  rule undeclared(IDENT, SymTab -> 0) :
       isDeclared(IDENT, SymTab -> IDENT2)
  rule undeclared(IDENT, SymTab -> 1)

// Succeeds and returns IdentOut, iff IdentOut is an element of the
// SymTab and equals to IdentIn.
condition isDeclared(IdentIn:string, SymTab:string[] -> IdentOut:string)
  rule    isDeclared(ID, SymTab -> ID) : containsElem(SymTab, ID)

// Succeeds iff the list contains the elem.
condition containsElem(list:string[], elem:string)
  rule    containsElem(string[E::R], Elem) : Equal(E, Elem)
  rule    containsElem(string[E::R], Elem) : containsElem(R, Elem)

////////////////////////////////////////////////////////////////////////////////
// Abstract syntax back to concrete syntax

// Prints the SyntaxTree as a source program with positions of lexems as
// comments. The SyntaxTree may contain errors (double declarations or
// undeclared statements) and it may be empty!
proc   pPROG(SyntaxTree:COMMAND[])
  rule pPROG(CMDS) : "prog\n" pCMDS(CMDS) "end\n"

proc   pCMDS(COMMAND[])
  rule pCMDS(COMMAND[])
  rule pCMDS(COMMAND[CMD::CMDS]) : pCMD(CMD) pCMDS(CMDS)

proc   pCMD(COMMAND)
  rule pCMD(dec(ID)) : sourcepos(ID -> PosID)
       "   dec " $ID "   // pos " $PosID "\n"
  rule pCMD(stm(ID)) : sourcepos(ID -> PosID)
       "   stm " $ID "   // pos " $PosID "\n"
