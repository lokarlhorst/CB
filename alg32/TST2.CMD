@echo off
rem Script TST2.CMD
rem ----------------------------------------------------------------------
rem Checks if the current alg compiler detects certain errors in alg32
rem programs (double declarations or missing declarations of variables,
rem type errors)
rem Applies the compiler to several short alg32 programs, which contain
rem one such error each, writes the outputs into a file FOUND2.OUT,
rem compares this file with file EXPECTED2 and reports any differences.
rem ----------------------------------------------------------------------

SetLocal

rem If a file named FOUND2.OUT exists it is deleted. Then
rem a new file named FOUND2.OUT is created with the text
rem "Testfile2" as its first line:

echo Testfile2> FOUND2.OUT

rem ----------------------------------------------------------------------
rem alg programs containing one error each:

rem Double declarations:
call :TST1 int    x; int    x;
call :TST1 bool   x; bool   x;
call :TST1 string x; string x;

call :TST1 int    x; bool   x;
call :TST1 bool   x; string x;
call :TST1 string x; int    x;

call :TST1 int    x; write(17); int    x;
call :TST1 bool   x; write(17); bool   x;
call :TST1 string x; write(17); string x;

rem Applications of undeclared variables in various commands:

rem write, writeln
call :TST1 write(x);
call :TST1 writeln(x);

rem Variable declaration:
call :TST1 int    x := y;
call :TST1 bool   x := y;
call :TST1 string x := y;

rem Assignment
call :TST1 int    x; x := y;
call :TST1 bool   x; x := y;
call :TST1 string x; x := y;

rem read
call :TST1 read(x);

rem Applications of undeclared variables in various expressions:
call :TST1 int    x; write(x+x+y);
call :TST1 int    x; write(x-y-x);
call :TST1 int    x; write(y*x*y);
call :TST1 int    x; write(x/x/y);
call :TST1 int    x; write(x+x-x*x/y);
call :TST1 int    x; write(x/x*y+x-x);

call :TST1 int    x; write( x + -y);
call :TST1 int    x; write(-y -  x);

call :TST1 bool   x; write(x or  x or  y);
call :TST1 bool   x; write(y and x and x);

call :TST1 bool   x; write(x or  not y);
call :TST1 bool   x; write(not y and x);

rem call :TST1 string x; write(x & x & y);
rem call :TST1 string x; write(x & y & x);

call :TST1 int    x; write(x =  y);
call :TST1 bool   x; write(y =  x);
call :TST1 string x; write(x =  y);

call :TST1 int    x; write(y != x);
call :TST1 bool   x; write(x != y);
call :TST1 string x; write(y != x);

rem Type errors

rem Variable declarations, initialization with literals:
call :TST1 int    x := true ;
call :TST1 int    x := "123";
call :TST1 bool   x := "123";
call :TST1 bool   x := 2    ;
call :TST1 string x := 2    ;
call :TST1 string x := true ;

rem Variable declarations, initialization with variables:
call :TST1 bool   y; int    x := y;
call :TST1 string y; int    x := y;
call :TST1 string y; bool   x := y;
call :TST1 int    y; bool   x := y;
call :TST1 int    y; string x := y;
call :TST1 bool   y; string x := y;

rem Assignment
call :TST1 int    x; x:= true ;
call :TST1 int    x; x:= "123";
call :TST1 bool   x; x:= "123";
call :TST1 bool   x; x:= 2    ;
call :TST1 string x; x:= 2    ;
call :TST1 string x; x:= true ;

call :TST1 bool   y; int    x; x := y;
call :TST1 string y; int    x; x := y;
call :TST1 string y; bool   x; x := y;
call :TST1 int    y; bool   x; x := y;
call :TST1 int    y; string x; x := y;
call :TST1 bool   y; string x; x := y;

rem Type errors in expressions with arithmetic operators and literals:
call :TST1 writeln(   3 + true );
call :TST1 writeln(   3 + "123");
call :TST1 writeln(true + "123");
call :TST1 writeln(true +    3 );
call :TST1 writeln("123"+    3 );
call :TST1 writeln("123"+ true );
call :TST1 writeln(true + true );
call :TST1 writeln("123"+ "123");

call :TST1 writeln(   3 - true );
call :TST1 writeln(   3 - "123");
call :TST1 writeln(true - "123");
call :TST1 writeln(true -    3 );
call :TST1 writeln("123"-    3 );
call :TST1 writeln("123"- true );
call :TST1 writeln(true - true );
call :TST1 writeln("123"- "123");

call :TST1 writeln(   3 * true );
call :TST1 writeln(   3 * "123");
call :TST1 writeln(true * "123");
call :TST1 writeln(true *    3 );
call :TST1 writeln("123"*    3 );
call :TST1 writeln("123"* true );
call :TST1 writeln(true * true );
call :TST1 writeln("123"* "123");

call :TST1 writeln(   3 / true );
call :TST1 writeln(   3 / "123");
call :TST1 writeln(true / "123");
call :TST1 writeln(true /    3 );
call :TST1 writeln("123"/    3 );
call :TST1 writeln("123"/ true );
call :TST1 writeln(true / true );
call :TST1 writeln("123"/ "123");

call :TST1 writeln(-"123");
call :TST1 writeln(-true);

rem Type errors in expressions with arithmetic operators and variables:
call :TST1 int    x; bool   y; writeln(x+y);
call :TST1 int    x; string y; writeln(x+y);
call :TST1 bool   x; string y; writeln(x+y);
call :TST1 bool   x; int    y; writeln(x+y);
call :TST1 string x; int    y; writeln(x+y);
call :TST1 string x; bool   y; writeln(x+y);
call :TST1 bool   x; bool   y; writeln(x+y);
call :TST1 string x; string y; writeln(x+y);

call :TST1 int    x; bool   y; writeln(x-y);
call :TST1 int    x; string y; writeln(x-y);
call :TST1 bool   x; string y; writeln(x-y);
call :TST1 bool   x; int    y; writeln(x-y);
call :TST1 string x; int    y; writeln(x-y);
call :TST1 string x; bool   y; writeln(x-y);
call :TST1 bool   x; bool   y; writeln(x-y);
call :TST1 string x; string y; writeln(x-y);

call :TST1 int    x; bool   y; writeln(x*y);
call :TST1 int    x; string y; writeln(x*y);
call :TST1 bool   x; string y; writeln(x*y);
call :TST1 bool   x; int    y; writeln(x*y);
call :TST1 string x; int    y; writeln(x*y);
call :TST1 string x; bool   y; writeln(x*y);
call :TST1 bool   x; bool   y; writeln(x*y);
call :TST1 string x; string y; writeln(x*y);

call :TST1 int    x; bool   y; writeln(x/y);
call :TST1 int    x; string y; writeln(x/y);
call :TST1 bool   x; string y; writeln(x/y);
call :TST1 bool   x; int    y; writeln(x/y);
call :TST1 string x; int    y; writeln(x/y);
call :TST1 string x; bool   y; writeln(x/y);
call :TST1 bool   x; bool   y; writeln(x/y);
call :TST1 string x; string y; writeln(x/y);

call :TST1 string x; writeln(-x);
call :TST1 bool   x; writeln(-x);

rem Type errors in expressions with bool operators and literals:
call :TST1 writeln(   3  or true );
call :TST1 writeln(   3  or "123");
call :TST1 writeln(true  or "123");
call :TST1 writeln(true  or    3 );
call :TST1 writeln("123" or    3 );
call :TST1 writeln("123" or true );

call :TST1 writeln(   3  and true );
call :TST1 writeln(   3  and "123");
call :TST1 writeln(true  and "123");
call :TST1 writeln(true  and    3 );
call :TST1 writeln("123" and    3 );
call :TST1 writeln("123" and true );

call :TST1 writeln(not "123");
call :TST1 writeln(not    3 );

rem Type errors in expressions with bool operators and variables:
call :TST1 int    x; bool   y; writeln(x or y);
call :TST1 int    x; string y; writeln(x or y);
call :TST1 bool   x; string y; writeln(x or y);
call :TST1 bool   x; int    y; writeln(x or y);
call :TST1 string x; int    y; writeln(x or y);
call :TST1 string x; bool   y; writeln(x or y);

call :TST1 int    x; bool   y; writeln(x and y);
call :TST1 int    x; string y; writeln(x and y);
call :TST1 bool   x; string y; writeln(x and y);
call :TST1 bool   x; int    y; writeln(x and y);
call :TST1 string x; int    y; writeln(x and y);
call :TST1 string x; bool   y; writeln(x and y);

call :TST1 string x; writeln(not x);
call :TST1 int    x; writeln(not x);

rem Type errors in expressions with comparison operators and literals:
rem (only the operators = and != are tested here)
call :TST1 writeln(   3 = true );
call :TST1 writeln(   3 = "123");
call :TST1 writeln(true = "123");
call :TST1 writeln(true =    3 );
call :TST1 writeln("123"=    3 );
call :TST1 writeln("123"= true );

call :TST1 writeln(   3 != true );
call :TST1 writeln(   3 != "123");
call :TST1 writeln(true != "123");
call :TST1 writeln(true !=    3 );
call :TST1 writeln("123"!=    3 );
call :TST1 writeln("123"!= true );

rem Type errors in expressions with comparison operators and variables:
rem (only the operators = and != are tested here)
call :TST1 int    x; bool   y; writeln(x=y);
call :TST1 int    x; string y; writeln(x=y);
call :TST1 bool   x; string y; writeln(x=y);
call :TST1 bool   x; int    y; writeln(x=y);
call :TST1 string x; int    y; writeln(x=y);
call :TST1 string x; bool   y; writeln(x=y);

call :TST1 int    x; bool   y; writeln(x!=y);
call :TST1 int    x; string y; writeln(x!=y);
call :TST1 bool   x; string y; writeln(x!=y);
call :TST1 bool   x; int    y; writeln(x!=y);
call :TST1 string x; int    y; writeln(x!=y);
call :TST1 string x; bool   y; writeln(x!=y);

echo *********************************************************************
rem Compare files EXPECTED2.OUT and FOUND2.OUT and report any differences:
FC EXPECTED2.OUT FOUND2.OUT

goto :EOF


rem ***************************************** Begin of procedure :TST1 ***
rem This procedure carries out 1 test:
rem It expects any number of parameters (at least 1), writes them all
rem into a file ALG.TMP and applies the current alg compiler to that file.
rem The file ALG.TMP and the ouptut of the alg compiler is appended to
rem file FOUND2.OUT.

: TST1
echo     %*> ALG.TMP
echo SRC %*>>                         FOUND2.OUT
..\..\cyan\bin\Gecco /run ALG.TMP >> FOUND2.OUT

goto :EOF
rem ******************************************* End of procdedur :TST1 ***

:EOF
