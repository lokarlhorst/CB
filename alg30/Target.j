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
.limit locals 4
   ldc "-------------------------------"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   ldc "Here we go!"
   invokestatic RTS/plnString(Ljava/lang/String;)V

; vardec
   iconst_0
   istore_1
; vardec
   bipush 0
   istore_2
; vardec
   new java/lang/String
   dup
   ldc ""
   invokespecial java/lang/String/<init>(Ljava/lang/String;)V
   astore_3
; write
   ldc "anna: "
   invokestatic RTS/pString(Ljava/lang/String;)V
; read
   invokestatic RTS/readBool()I
   istore_1
; write
   ldc "bert: "
   invokestatic RTS/pString(Ljava/lang/String;)V
; read
   invokestatic RTS/readInt()I
   istore_2
; write
   ldc "chris: "
   invokestatic RTS/pString(Ljava/lang/String;)V
; read
   invokestatic RTS/readString()Ljava/lang/String;
   astore_3
; write
   ldc "anna = "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload_1
   invokestatic RTS/plnBool(I)V
; write
   ldc "bert = "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   iload_2
   invokestatic RTS/plnInt(I)V
; write
   ldc "chris = "
   invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
   aload_3
   invokestatic RTS/plnString(Ljava/lang/String;)V

   ldc "That's all!"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   ldc "-------------------------------"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   return
.end method
