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

; vardec
  bipush 5
  istore_1

goto WhileCondition_1
WhileStart_1:
; writeln
  ldc "round "
  iload_1
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; assign
  iload_1
  bipush 1
  isub
  istore_1
WhileCondition_1:
  iload_1
  bipush 0
  if_icmpgt Cmp1_1
  iconst_0
  goto Cmp2_1
Cmp1_1:
  iconst_1
Cmp2_1:
  ifne WhileStart_1

; writeln
  ldc "-------"
  invokestatic RTS/plnString(Ljava/lang/String;)V

DoUntil_1:
; assign
  iload_1
  bipush 1
  iadd
  istore_1
; writeln
  ldc "round "
  iload_1
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; condition
  iload_1
  bipush 5
  if_icmpge Cmp1_2
  iconst_0
  goto Cmp2_2
Cmp1_2:
  iconst_1
Cmp2_2:
  ifeq DoUntil_1

; writeln
  ldc "-------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; vardec
  bipush 3
  istore_2
; vardec
  bipush 0
  istore_3

goto WhileCondition_2
WhileStart_2:
; assign
  iload_2
  istore_3

goto WhileCondition_3
WhileStart_3:
; writeln
  ldc "round j: "
  iload_2
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc ", k: "
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  iload_3
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; assign
  iload_3
  bipush 1
  isub
  istore_3
WhileCondition_3:
  iload_3
  bipush 0
  if_icmpgt Cmp1_3
  iconst_0
  goto Cmp2_3
Cmp1_3:
  iconst_1
Cmp2_3:
  ifne WhileStart_3

; assign
  iload_2
  bipush 1
  isub
  istore_2
WhileCondition_2:
  iload_2
  bipush 0
  if_icmpgt Cmp1_4
  iconst_0
  goto Cmp2_4
Cmp1_4:
  iconst_1
Cmp2_4:
  ifne WhileStart_2


  ldc "-------------------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
  return
.end method
