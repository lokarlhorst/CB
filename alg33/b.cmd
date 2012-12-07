@echo off
rem Script b.cmd
rem ----------------------------------------------------------------------
rem 1. Compiles the file %1 (if a parameter %1 was passed) and
rem    the file t01 otherwise with the current alg compiler into
rem    a file Target.j.
rem 2. Assembles Target.j with Jasmin into Target.class
rem 3. Executes Target.class.
rem
rem Requires the java interpreter java.exe by Sun to be accessible
rem via the PATH variable.
rem ----------------------------------------------------------------------

SetLocal

rem Quit immediatly if there is no current alg compiler
rem (this is a dirty command, which may soon not function any more)
if not exist YyProcsPackage\YyProcs.class goto :ALG_COMPILER_MISSING

if "%1"=="" (      rem If no parameter was passed
   set FILE=t01
) else (           rem If a parameter was passed
   set FILE=%1
)

echo ----------------------------------------------------------------
rem Delete previous version of Target.j if it exists:
del Target.j  2> nul
echo Compile %FILE% with the current alg compiler into Target.j:
..\..\cyan\bin\Gecco /run %FILE%
if not exist Target.j goto :ERROR_IN_ALG_SOURCE

echo ----------------------------------------------------------------
rem Delete previous version of Target.class if it exists:
del Target.class 2> nul
echo Assemble Target.j with jasmin.Main into Target.class:
java.exe -cp ..\01_jasmin\jasmin.jar jasmin.Main Target.j
if not exist Target.class goto :ERROR_IN_ALG_SOURCE

echo ----------------------------------------------------------------
echo Execute Target.class:
java.exe -cp .;..\03_auxFiles Target

goto :EOF

:ALG_COMPILER_MISSING
echo ----------------------------------------------------------------
echo There seems to be no current compiler
goto :EOF

:ERROR_IN_ALG_SOURCE
echo ----------------------------------------------------------------
echo There still seem to be some errors in alg source %FILE%
goto :EOF

:EOF
