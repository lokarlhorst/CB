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
.limit locals 2
   ldc "-------------------------------"
   invokestatic RTS/plnString(Ljava/lang/String;)V

; vardec
   bipush 0
   istore_1
; assign
   ldc "ABC"
   istore_1

   ldc "-------------------------------"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   return
.end method
