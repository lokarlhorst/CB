@echo off
rem Script TST2.CMD
rem ----------------------------------------------------------------------
rem Checks if the current alg compiler detects certain errors in alg31
rem programs (double declarations or missing declarations of variables).
rem Applies the compiler to several short alg31 programs, which contain
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
