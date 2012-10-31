root
  NZ_Getr_0104
  print "Successfully parsed!"

// FS12 ////////////////////////////////////////////////////////////////////////

phrase NZ_Getr_0104
  rule NZ_Getr_0104 : NZ_Getr_0104_B
  rule NZ_Getr_0104 : NZ_Getr_0104_Z

phrase NZ_Getr_0104_B
  rule NZ_Getr_0104_B : GK_BuFo "#"
  rule NZ_Getr_0104_B : GK_BuFo "#" ZiffFo "#"
  rule NZ_Getr_0104_B : GK_BuFo "#" ZiffFo "#" NZ_Getr_0104_B

phrase NZ_Getr_0104_Z
  rule NZ_Getr_0104_Z : ZiffFo "#"
  rule NZ_Getr_0104_Z : ZiffFo "#" GK_BuFo "#"
  rule NZ_Getr_0104_Z : ZiffFo "#" GK_BuFo "#" NZ_Getr_0104_Z

// FS04 ////////////////////////////////////////////////////////////////////////

phrase GK_BuFo
  rule GK_BuFo : Buchst
  rule GK_BuFo : Buchst K_BuFo

phrase K_BuFo
  rule K_BuFo : Kb
  rule K_BuFo : Kb K_BuFo

// FS03 ////////////////////////////////////////////////////////////////////////

phrase Buchst
  rule Buchst : Gb
  rule Buchst : Kb

// FS01 ////////////////////////////////////////////////////////////////////////

phrase ZiffFo
  rule ZiffFo : Ziff
  rule ZiffFo : ZiffFo Ziff

// PREDEFINED //////////////////////////////////////////////////////////////////

phrase Gb
  rule Gb : "A"
  rule Gb : "B"
  rule Gb : "C"
  rule Gb : "D"
  rule Gb : "E"
  rule Gb : "F"
  rule Gb : "G"
  rule Gb : "H"
  rule Gb : "I"
  rule Gb : "J"
  rule Gb : "K"
  rule Gb : "L"
  rule Gb : "M"
  rule Gb : "N"
  rule Gb : "O"
  rule Gb : "P"
  rule Gb : "Q"
  rule Gb : "R"
  rule Gb : "S"
  rule Gb : "T"
  rule Gb : "U"
  rule Gb : "V"
  rule Gb : "W"
  rule Gb : "X"
  rule Gb : "Y"
  rule Gb : "Z"

phrase Kb
  rule Kb : "a"
  rule Kb : "b"
  rule Kb : "c"
  rule Kb : "d"
  rule Kb : "e"
  rule Kb : "f"
  rule Kb : "g"
  rule Kb : "h"
  rule Kb : "i"
  rule Kb : "j"
  rule Kb : "k"
  rule Kb : "l"
  rule Kb : "m"
  rule Kb : "n"
  rule Kb : "o"
  rule Kb : "p"
  rule Kb : "q"
  rule Kb : "r"
  rule Kb : "s"
  rule Kb : "t"
  rule Kb : "u"
  rule Kb : "v"
  rule Kb : "w"
  rule Kb : "x"
  rule Kb : "y"
  rule Kb : "z"

phrase Ziff
  rule Ziff : "0"
  rule Ziff : "1"
  rule Ziff : "2"
  rule Ziff : "3"
  rule Ziff : "4"
  rule Ziff : "5"
  rule Ziff : "6"
  rule Ziff : "7"
  rule Ziff : "8"
  rule Ziff : "9"
