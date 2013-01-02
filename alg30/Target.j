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
.limit locals 10
   ldc "-------------------------------"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   ldc "Here we go!"
   invokestatic RTS/plnString(Ljava/lang/String;)V

; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; writeln
   ldc "     expected  | found            |"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-001   ABC   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   ldc "ABC"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-002   100   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   bipush 100
   invokestatic RTS/plnInt(I)V
; write
   ldc "99-003   false | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iconst_0
   invokestatic RTS/plnBool(I)V
; write
   ldc "99-004   true  | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iconst_1
   invokestatic RTS/plnBool(I)V
; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-005   ABC   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   ldc "ABC"
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   ldc "\n"
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   ldc "99-006   100   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   bipush 100
   invokestatic RTS/pInt(I)V
; write
   ldc "\n"
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   ldc "99-007   false | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   iconst_0
   invokestatic RTS/pBool(I)V
; write
   ldc "\n"
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   ldc "99-008   true  | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   iconst_1
   invokestatic RTS/pBool(I)V
; write
   ldc "\n"
   invokestatic RTS/pString(Ljava/lang/String;)V
; vardec
   new java/lang/String
   dup
   ldc ""
   invokespecial java/lang/String/<init>(Ljava/lang/String;)V
   astore_1
; vardec
   new java/lang/String
   dup
   ldc "ABC"
   invokespecial java/lang/String/<init>(Ljava/lang/String;)V
   astore_2
; vardec
   new java/lang/String
   dup
   aload_2
   invokespecial java/lang/String/<init>(Ljava/lang/String;)V
   astore_3
; vardec
   bipush 0
   istore 4
; vardec
   bipush 100
   istore 5
; vardec
   iload 5
   istore 6
; vardec
   iconst_0
   istore 7
; vardec
   iconst_1
   istore 8
; vardec
   iload 8
   istore 9
; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; writeln
   ldc "     expected  | found            |"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-009   <-    | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   aload_1
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   ldc "<-"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-010   0     | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload 4
   invokestatic RTS/plnInt(I)V
; write
   ldc "99-011   false | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload 7
   invokestatic RTS/plnBool(I)V
; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-012   ABC   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   aload_2
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-013   100   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload 5
   invokestatic RTS/plnInt(I)V
; write
   ldc "99-014   true  | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload 8
   invokestatic RTS/plnBool(I)V
; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-015   ABC   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   aload_3
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-016   100   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload 6
   invokestatic RTS/plnInt(I)V
; write
   ldc "99-017   true  | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload 9
   invokestatic RTS/plnBool(I)V
; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-018   ABC   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   aload_3
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   ldc "\n"
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   ldc "99-019   100   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   iload 6
   invokestatic RTS/pInt(I)V
; write
   ldc "\n"
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   ldc "99-020   true  | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; write
   iload 9
   invokestatic RTS/pBool(I)V
; write
   ldc "\n"
   invokestatic RTS/pString(Ljava/lang/String;)V
; assign
   new java/lang/String
   dup
   ldc "DEF"
   invokespecial java/lang/String/<init>(Ljava/lang/String;)V
   astore_1
; assign
   sipush 200
   istore 4
; assign
   iconst_1
   istore 7
; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-021   DEF   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   aload_1
   invokestatic RTS/plnString(Ljava/lang/String;)V
; write
   ldc "99-022   200   | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload 4
   invokestatic RTS/plnInt(I)V
; write
   ldc "99-023   true  | "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload 7
   invokestatic RTS/plnBool(I)V
; writeln
   ldc "---------------+------------------+"
   invokestatic RTS/plnString(Ljava/lang/String;)V

   ldc "That's all!"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   ldc "-------------------------------"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   return
.end method
