#!/bin/bash

SCRIPT=`basename $0`

COLORNO="\033[0m"
COLOR01="\033[0;01m"
COLOR02="\033[32;01m"
COLOR03="\033[31;01m"

PREFIX="$COLOR02==>$COLOR01"
SUFFIX="$COLORNO"


if [ "$1" == "" ]; then
  echo -e $COLOR03"USAGE: $SCRIPT <*.java|*.class|*.j> $SUFFIX"
  exit
elif [ ! -r "$1" ]; then
  echo -e $COLOR03"ERROR: $1 doesn't exist $SUFFIX"
  exit
fi

FILENAME=`basename $1`
NAME="${FILENAME%.*}"
EXT="${1##*.}"

if [ "$EXT" == "java" ]; then
  echo 'JAVA2CLASS'
  javac $1
  echo -e "Eine Datei $NAME.class wurde erzeugt (vom Java-Compiler javac)"
  exit
fi

if [ "$EXT" == "class" ]; then
  echo 'CLASS2J'
  BCEL_JAR=../../projects/01_jasmin/bcel.jar
  java -cp $BCEL_JAR JasminVisitor $1
  echo -e "Eine Datei $NAME.j wurde erzeugt (vom back-assembler JasminVisitor)"
  exit
fi

if [ "$EXT" == "j" ]; then
  echo 'J2CLASS'
  echo -e $1 wird nach $NAME.class uebersetzt.
  JASMIN_JAR=../../projects/01_jasmin/jasmin.jar
  java -cp $JASMIN_JAR jasmin.Main $NAME.j
  exit
fi
