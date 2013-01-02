;Target produced by compiler alg30
;at the Beuth Hochschule, TB5-CPB,WS12/13
;---------------------------------
.class public Target
.super java/lang/Object
.method public <init>()V
   aload_0
   invokenonvirtual java/lang/Object/<init>()V
   return
.end method
.method public static main([Ljava/lang/String;)V
.limit stack  10
.limit locals 1
   ldc "-------------------------------"
   invokestatic RTS/plnString(Ljava/lang/String;)V

; writeln
   ldc " EXPRESSION              | EXPECTED                | RESULT"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; writeln
   ldc "-------------------------|-------------------------|-------------------------"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc " \"Hello \" & \"World\"      | Hello World             | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   ldc "Hello "
   ldc "World"
   invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc " 123 & 456               | 123456                  | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 123
   invokestatic RTS/intToString(I)Ljava/lang/String;
   sipush 456
   invokestatic RTS/intToString(I)Ljava/lang/String;
   invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc " true & false            | truefalse               | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iconst_1
   invokestatic RTS/boolToString(I)Ljava/lang/String;
   iconst_0
   invokestatic RTS/boolToString(I)Ljava/lang/String;
   invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc " 1 < 2                   | true                    | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 1
   bipush 2
   if_icmplt LabelCmp1_1
   iconst_0
   goto LabelCmp2_1
LabelCmp1_1:
   iconst_1
LabelCmp2_1:
   invokestatic RTS/plnBool(I)V
; write
   ldc " 3 < 2                   | false                   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 3
   bipush 2
   if_icmplt LabelCmp1_2
   iconst_0
   goto LabelCmp2_2
LabelCmp1_2:
   iconst_1
LabelCmp2_2:
   invokestatic RTS/plnBool(I)V
; write
   ldc " \"asd\" < \"asdf\"          | true                    | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   ldc "asd"
   ldc "asdf"
   invokestatic RTS/lessThan(Ljava/lang/String;Ljava/lang/String;)I
   invokestatic RTS/plnBool(I)V
; write
   ldc " false < true            | true                    | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iconst_0
   iconst_1
   if_icmplt LabelCmp1_3
   iconst_0
   goto LabelCmp2_3
LabelCmp1_3:
   iconst_1
LabelCmp2_3:
   invokestatic RTS/plnBool(I)V
; write
   ldc " 3 <= 4                  | true                    | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 3
   bipush 4
   if_icmple LabelCmp1_4
   iconst_0
   goto LabelCmp2_4
LabelCmp1_4:
   iconst_1
LabelCmp2_4:
   invokestatic RTS/plnBool(I)V
; write
   ldc " 5 = 5                   | true                    | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 5
   bipush 5
   if_icmpeq LabelCmp1_5
   iconst_0
   goto LabelCmp2_5
LabelCmp1_5:
   iconst_1
LabelCmp2_5:
   invokestatic RTS/plnBool(I)V
; write
   ldc " \"test\" = \"test\"         | true                    | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   ldc "test"
   ldc "test"
   invokestatic RTS/equals(Ljava/lang/String;Ljava/lang/String;)I
   invokestatic RTS/plnBool(I)V
; write
   ldc " \"test\" = \"tesf\"         | false                   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   ldc "test"
   ldc "tesf"
   invokestatic RTS/equals(Ljava/lang/String;Ljava/lang/String;)I
   invokestatic RTS/plnBool(I)V
; write
   ldc " \"test\" != \"test\"        | false                   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   ldc "test"
   ldc "test"
   invokestatic RTS/unEquals(Ljava/lang/String;Ljava/lang/String;)I
   invokestatic RTS/plnBool(I)V
; write
   ldc " 5 >= 6                  | false                   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 5
   bipush 6
   if_icmpge LabelCmp1_6
   iconst_0
   goto LabelCmp2_6
LabelCmp1_6:
   iconst_1
LabelCmp2_6:
   invokestatic RTS/plnBool(I)V
; write
   ldc " 7 > 6                   | true                    | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 7
   bipush 6
   if_icmpgt LabelCmp1_7
   iconst_0
   goto LabelCmp2_7
LabelCmp1_7:
   iconst_1
LabelCmp2_7:
   invokestatic RTS/plnBool(I)V
; write
   ldc " true or false           | true                    | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iconst_1
   iconst_0
   ior
   invokestatic RTS/plnBool(I)V
; write
   ldc " true and false          | false                   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iconst_1
   iconst_0
   iand
   invokestatic RTS/plnBool(I)V
; write
   ldc " not true                | false                   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iconst_1
   iconst_1
   ixor
   invokestatic RTS/plnBool(I)V
; write
   ldc " 1 + 2 + 3               | 6                       | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 1
   bipush 2
   iadd
   bipush 3
   iadd
   invokestatic RTS/plnInt(I)V
; write
   ldc " 10 - 3 - 2              | 5                       | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 10
   bipush 3
   isub
   bipush 2
   isub
   invokestatic RTS/plnInt(I)V
; write
   ldc " 3 * 3                   | 9                       | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 3
   bipush 3
   imul
   invokestatic RTS/plnInt(I)V
; write
   ldc " 9 / 3                   | 3                       | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 9
   bipush 3
   idiv
   invokestatic RTS/plnInt(I)V
; write
   ldc " -1                      | -1                      | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 1
   ineg
   invokestatic RTS/plnInt(I)V

   ldc "-------------------------------"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   return
.end method
