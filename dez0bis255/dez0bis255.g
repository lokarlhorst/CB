phrase Zahlen0Bis255
  rule Zahlen0Bis255 : Zahlen0Bis99
  rule Zahlen0Bis255 : "1" Ziff0Bis9 Ziff0Bis9
  rule Zahlen0Bis255 : "2" Ziff0Bis4 Ziff0Bis9
  rule Zahlen0Bis255 : "2" Ziff0Bis5 Ziff0Bis5

phrase Ziff0Bis4
  rule Ziff0Bis4 : "0"
  rule Ziff0Bis4 : Ziff1Bis4

phrase Ziff0Bis5
  rule Ziff0Bis5 : Ziff0Bis4
  rule Ziff0Bis5 : "5"

phrase Ziff0Bis9
  rule Ziff0Bis9 : "0"
  rule Ziff0Bis9 : Ziff1Bis9

phrase Ziff1Bis4
  rule Ziff1Bis4 : "1"
  rule Ziff1Bis4 : "2"
  rule Ziff1Bis4 : "3"
  rule Ziff1Bis4 : "4"

phrase Ziff1Bis9
  rule Ziff1Bis9 : Ziff1Bis4
  rule Ziff1Bis9 : "5"
  rule Ziff1Bis9 : "6"
  rule Ziff1Bis9 : "7"
  rule Ziff1Bis9 : "8"
  rule Ziff1Bis9 : "9"

phrase Zahlen0Bis99
  rule Zahlen0Bis99 : Ziff0Bis9
  rule Zahlen0Bis99 : Ziff1Bis9 Ziff0Bis9

phrase Zahlen0Bis100
  rule Zahlen0Bis100 : Zahlen0Bis99
  rule Zahlen0Bis100 : "100"

phrase Zahlen0Bis299
  rule Zahlen0Bis299 : Zahlen0Bis99
  rule Zahlen0Bis299 : "1" Ziff0Bis9 Ziff0Bis9
  rule Zahlen0Bis299 : "2" Ziff0Bis9 Ziff0Bis9

root
  Zahlen0Bis255
  print("Succesful")
