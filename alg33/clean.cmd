@echo off
rem Script clean.cmd
rem -----------------------------------------------------------------
rem Deletes all files and directories which have been created
rem by the Gentle compiler and its allies.
rem -----------------------------------------------------------------

rem The command   rmdir /S /Q xxx  will delete the folder xxx
rem and all files contained in it, without asking for permission.

rmdir /S /Q YyGrammarPackage   2> nul
rmdir /S /Q YyGramGenPackage   2> nul
rmdir /S /Q YyProcsPackage     2> nul
rmdir /S /Q YySupportPackage   2> nul
del         *.TMP              2> nul
del         Target.j           2> nul
del         Target.class       2> nul
del         FOUND?.OUT         2> nul
