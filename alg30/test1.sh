#!/bin/bash

GECCO=gecco.sh

# Checks if the current alg compiler translates the
# alg30 source file TST1.ALG such that it produces the expected output.
# Translates TST1.ALG into a class, executes that class, redirects the
# output of that execution into a file FOUND1.OUT, compares that file
# with a file EXPECTED1.OUT and reports any differences.

# If a file named FOUND1.OUT exists it is deleted. Then
# a new file named FOUND1.OUT is created with the text
# "Testfile1" as its first line:
echo Testfile1 > FOUND1.OUT

echo '--------------------------------------------------------------------------------'
echo run alg compiler and compile TST1.ALG into Target.j
$GECCO /run TST1.ALG

echo '--------------------------------------------------------------------------------'
echo run jasmin and assemble Target.j into Target.class
JASMIN_JAR=../../jasmin/jasmin.jar
java -cp $JASMIN_JAR jasmin.Main Target.j

echo '--------------------------------------------------------------------------------'
echo Execute Target.class and redirect output to file FOUND1.OUT:
AUX_FILES=../../auxFiles
java -cp .;$AUX_FILES Target >> FOUND1.OUT

echo '--------------------------------------------------------------------------------'
# Compare files EXPECTED1.OUT and FOUND1.OUT and report any differences:
FC EXPECTED1.OUT FOUND1.OUT
