#!/bin/bash

NAME=`basename \`pwd\``
GECCO=gecco.sh

COLORNO="\033[0m"
COLOR01="\033[0;01m"
COLOR02="\033[32;01m"
COLOR03="\033[31;01m"

PREFIX="$COLOR02==>$COLOR01"
SUFFIX="$COLORNO"


if [ "$1" == "" ]; then
  FILE=t01
else
  FILE=$1
fi

if [ ! -r "$FILE" ]; then
  echo -e $COLOR03"ERROR: $FILE doesn't exist $SUFFIX"
  exit
fi

echo -e "$PREFIX $GECCO /gen $NAME.g $SUFFIX"

$GECCO /gen $NAME.g

echo '--------------------------------------------------------------------------------'

echo -e "$PREFIX cat $FILE $SUFFIX"

cat $FILE

echo '--------------------------------------------------------------------------------'

echo -e "$PREFIX $GECCO /run $FILE $SUFFIX"

$GECCO /run $FILE

