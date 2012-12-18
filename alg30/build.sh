#!/bin/bash

SCRIPT=`basename $0`

COLORNO="\033[0m"
COLOR01="\033[0;01m"
COLOR02="\033[32;01m"
COLOR03="\033[31;01m"

PREFIX="$COLOR02==>$COLOR01"
SUFFIX="$COLORNO"

JASMIN_DIR=~/Documents/_study/CB/projects/01_jasmin
JASMIN_JAR=$JASMIN_DIR/jasmin.jar
BCEL_JAR=$JASMIN_DIR/bcel.jar

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
  javac $1
  echo -e $COLOR02"JAVA2CLASS:"\
    $COLORNO"Eine Datei "$COLOR03"$NAME.class"$COLORNO\
    "wurde erzeugt (vom Java-Compiler javac)"
  exit
fi

if [ "$EXT" == "class" ]; then
  java -cp $BCEL_JAR JasminVisitor $1
  echo -e $COLOR02"CLASS2J:"\
    $COLORNO"Eine Datei"\
    $COLOR03"$NAME.j"$COLORNO\
    "wurde erzeugt (Back-Assembler JasminVisitor)"
  exit
fi

if [ "$EXT" == "j" ]; then
  java -cp $JASMIN_JAR jasmin.Main $NAME.j
  echo -e $COLOR02"J2CLASS:"\
    $COLORNO"Eine Datei "$COLOR03"$NAME.class"$COLORNO\
    "wurde erzeugt (Jasmin)."
  exit
fi
