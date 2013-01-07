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
.limit locals 17
  ldc "-------------------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V

; vardec
  bipush 4
  istore_1
; vardec
  bipush 2
  istore_2
; vardec
  iconst_0
  istore_3
; vardec
  iconst_1
  istore 4
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
  ldc "99-001      6  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 4
  bipush 2
  iadd
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-002      2  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 4
  bipush 2
  isub
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-003      8  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 4
  bipush 2
  imul
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-004      2  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 4
  bipush 2
  idiv
  invokestatic RTS/plnInt(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-005      6  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_1
  iload_2
  iadd
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-006      2  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_1
  iload_2
  isub
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-007      8  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_1
  iload_2
  imul
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-008      2  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_1
  iload_2
  idiv
  invokestatic RTS/plnInt(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-009      10 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_1
  bipush 3
  iload_2
  imul
  iadd
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-010      14 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_1
  bipush 3
  imul
  iload_2
  iadd
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-011      4  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 8
  bipush 3
  idiv
  iload_2
  imul
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-012      2  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 8
  iload_1
  isub
  iload_2
  isub
  invokestatic RTS/plnInt(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-013      14 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_1
  bipush 3
  iadd
  iload_2
  imul
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-014      20 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_1
  bipush 3
  iload_2
  iadd
  imul
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-015      1  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 8
  bipush 3
  iload_2
  imul
  idiv
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-016      6  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 8
  iload_1
  iload_2
  isub
  isub
  invokestatic RTS/plnInt(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-017      -5 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 3
  ineg
  bipush 2
  ineg
  iadd
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-018      -1 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 3
  ineg
  bipush 2
  ineg
  isub
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-019      6  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 3
  ineg
  bipush 2
  ineg
  imul
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-020      1  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 3
  ineg
  bipush 2
  ineg
  idiv
  invokestatic RTS/plnInt(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-021      -3 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 3
  ineg
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-022      3  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 3
  ineg
  ineg
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-023      -3 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 3
  ineg
  ineg
  ineg
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-024      3  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 3
  ineg
  ineg
  ineg
  ineg
  invokestatic RTS/plnInt(I)V
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
  ldc "99-025   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_0
  ior
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-026   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_1
  ior
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-027   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_0
  ior
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-028   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_1
  ior
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-029   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_0
  iand
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-030   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_1
  iand
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-031   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_0
  iand
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-032   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_1
  iand
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-033   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_1
  ixor
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-034   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_1
  ixor
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-035   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_1
  ixor
  iconst_1
  ixor
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-036   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_1
  ixor
  iconst_1
  ixor
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-037   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_3
  iload_3
  ior
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-038   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_3
  iload 4
  ior
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-039   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 4
  iload_3
  ior
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-040   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 4
  iload 4
  ior
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-041   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_3
  iload_3
  iand
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-042   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_3
  iload 4
  iand
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-043   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 4
  iload_3
  iand
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-044   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 4
  iload 4
  iand
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-045   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_3
  iconst_1
  ixor
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-046   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 4
  iconst_1
  ixor
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-047   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_3
  iconst_1
  ixor
  iconst_1
  ixor
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-048   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 4
  iconst_1
  ixor
  iconst_1
  ixor
  invokestatic RTS/plnBool(I)V
; vardec
  bipush 4
  istore 5
; vardec
  bipush 2
  istore 6
; vardec
  iconst_0
  istore 7
; vardec
  iconst_1
  istore 8
; vardec
  new java/lang/String
  dup
  ldc "ABC"
  invokespecial java/lang/String/<init>(Ljava/lang/String;)V
  astore 9
; vardec
  new java/lang/String
  dup
  ldc "ACB"
  invokespecial java/lang/String/<init>(Ljava/lang/String;)V
  astore 10
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
  ldc "99-049    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  bipush 2
  if_icmplt Cmp1_1
  iconst_0
  goto Cmp2_1
Cmp1_1:
  iconst_1
Cmp2_1:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-050    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  bipush 1
  if_icmple Cmp1_2
  iconst_0
  goto Cmp2_2
Cmp1_2:
  iconst_1
Cmp2_2:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-051    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  bipush 2
  if_icmple Cmp1_3
  iconst_0
  goto Cmp2_3
Cmp1_3:
  iconst_1
Cmp2_3:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-052    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  bipush 1
  if_icmpeq Cmp1_4
  iconst_0
  goto Cmp2_4
Cmp1_4:
  iconst_1
Cmp2_4:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-053    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  bipush 2
  if_icmpne Cmp1_5
  iconst_0
  goto Cmp2_5
Cmp1_5:
  iconst_1
Cmp2_5:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-054    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 2
  bipush 2
  if_icmpge Cmp1_6
  iconst_0
  goto Cmp2_6
Cmp1_6:
  iconst_1
Cmp2_6:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-055    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 2
  bipush 1
  if_icmpge Cmp1_7
  iconst_0
  goto Cmp2_7
Cmp1_7:
  iconst_1
Cmp2_7:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-056    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 2
  bipush 1
  if_icmpgt Cmp1_8
  iconst_0
  goto Cmp2_8
Cmp1_8:
  iconst_1
Cmp2_8:
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-057    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_1
  if_icmplt Cmp1_9
  iconst_0
  goto Cmp2_9
Cmp1_9:
  iconst_1
Cmp2_9:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-058    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_0
  if_icmple Cmp1_10
  iconst_0
  goto Cmp2_10
Cmp1_10:
  iconst_1
Cmp2_10:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-059    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_1
  if_icmple Cmp1_11
  iconst_0
  goto Cmp2_11
Cmp1_11:
  iconst_1
Cmp2_11:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-060    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_0
  if_icmpeq Cmp1_12
  iconst_0
  goto Cmp2_12
Cmp1_12:
  iconst_1
Cmp2_12:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-061    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_1
  if_icmpne Cmp1_13
  iconst_0
  goto Cmp2_13
Cmp1_13:
  iconst_1
Cmp2_13:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-062    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_1
  if_icmpge Cmp1_14
  iconst_0
  goto Cmp2_14
Cmp1_14:
  iconst_1
Cmp2_14:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-063    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_0
  if_icmpge Cmp1_15
  iconst_0
  goto Cmp2_15
Cmp1_15:
  iconst_1
Cmp2_15:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-064    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_0
  if_icmpgt Cmp1_16
  iconst_0
  goto Cmp2_16
Cmp1_16:
  iconst_1
Cmp2_16:
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-065    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ABC"
  ldc "ACB"
  invokestatic RTS/lessThan(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-066    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ABC"
  ldc "ABC"
  invokestatic RTS/lessEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-067    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ABC"
  ldc "ACB"
  invokestatic RTS/lessEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-068    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ABC"
  ldc "ABC"
  invokestatic RTS/equals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-069    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ABC"
  ldc "ACB"
  invokestatic RTS/unEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-070    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  ldc "ACB"
  invokestatic RTS/greaterEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-071    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  ldc "ABC"
  invokestatic RTS/greaterEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-072    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  ldc "ABC"
  invokestatic RTS/greaterThan(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-073    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  iload 5
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  iload 7
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  aload 9
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "ABC"
  iload 5
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  iload 7
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  aload 9
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/greaterThan(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-074    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 5
  invokestatic RTS/intToString(I)Ljava/lang/String;
  iload 7
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  aload 9
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "ACB"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  iload 5
  invokestatic RTS/intToString(I)Ljava/lang/String;
  iload 7
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  aload 9
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "ABC"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/greaterThan(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-075    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 5
  iload 6
  iadd
  bipush 11
  iadd
  iload 5
  iload 6
  iadd
  bipush 10
  iadd
  if_icmpgt Cmp1_17
  iconst_0
  goto Cmp2_17
Cmp1_17:
  iconst_1
Cmp2_17:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-076    true | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 5
  iload 6
  bipush 2
  imul
  iadd
  bipush 1
  iadd
  iload 5
  iload 6
  bipush 2
  imul
  iadd
  if_icmpgt Cmp1_18
  iconst_0
  goto Cmp2_18
Cmp1_18:
  iconst_1
Cmp2_18:
  invokestatic RTS/plnBool(I)V
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
  ldc "99-077   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 2
  bipush 1
  if_icmplt Cmp1_19
  iconst_0
  goto Cmp2_19
Cmp1_19:
  iconst_1
Cmp2_19:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-078   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 2
  bipush 2
  if_icmplt Cmp1_20
  iconst_0
  goto Cmp2_20
Cmp1_20:
  iconst_1
Cmp2_20:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-079   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 2
  bipush 1
  if_icmple Cmp1_21
  iconst_0
  goto Cmp2_21
Cmp1_21:
  iconst_1
Cmp2_21:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-080   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 2
  bipush 1
  if_icmpeq Cmp1_22
  iconst_0
  goto Cmp2_22
Cmp1_22:
  iconst_1
Cmp2_22:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-081   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 2
  bipush 2
  if_icmpne Cmp1_23
  iconst_0
  goto Cmp2_23
Cmp1_23:
  iconst_1
Cmp2_23:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-082   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  bipush 2
  if_icmpge Cmp1_24
  iconst_0
  goto Cmp2_24
Cmp1_24:
  iconst_1
Cmp2_24:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-083   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  bipush 2
  if_icmpgt Cmp1_25
  iconst_0
  goto Cmp2_25
Cmp1_25:
  iconst_1
Cmp2_25:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-084   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  bipush 1
  if_icmpgt Cmp1_26
  iconst_0
  goto Cmp2_26
Cmp1_26:
  iconst_1
Cmp2_26:
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-085   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_0
  if_icmplt Cmp1_27
  iconst_0
  goto Cmp2_27
Cmp1_27:
  iconst_1
Cmp2_27:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-086   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_1
  if_icmplt Cmp1_28
  iconst_0
  goto Cmp2_28
Cmp1_28:
  iconst_1
Cmp2_28:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-087   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_0
  if_icmple Cmp1_29
  iconst_0
  goto Cmp2_29
Cmp1_29:
  iconst_1
Cmp2_29:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-088   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_0
  if_icmpeq Cmp1_30
  iconst_0
  goto Cmp2_30
Cmp1_30:
  iconst_1
Cmp2_30:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-089   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_1
  if_icmpne Cmp1_31
  iconst_0
  goto Cmp2_31
Cmp1_31:
  iconst_1
Cmp2_31:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-090   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_1
  if_icmpge Cmp1_32
  iconst_0
  goto Cmp2_32
Cmp1_32:
  iconst_1
Cmp2_32:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-091   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_1
  if_icmpgt Cmp1_33
  iconst_0
  goto Cmp2_33
Cmp1_33:
  iconst_1
Cmp2_33:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-092   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  iconst_0
  if_icmpgt Cmp1_34
  iconst_0
  goto Cmp2_34
Cmp1_34:
  iconst_1
Cmp2_34:
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-093   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  ldc "ABC"
  invokestatic RTS/lessThan(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-094   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  ldc "ACB"
  invokestatic RTS/lessThan(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-095   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  ldc "ABC"
  invokestatic RTS/lessEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-096   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  ldc "ABC"
  invokestatic RTS/equals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-097   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  ldc "ACB"
  invokestatic RTS/unEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-098   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ABC"
  ldc "ACB"
  invokestatic RTS/greaterEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-099   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ABC"
  ldc "ACB"
  invokestatic RTS/greaterThan(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-100   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ABC"
  ldc "ABC"
  invokestatic RTS/greaterThan(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-101   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "ACB"
  iload 5
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  iload 7
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  aload 9
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "ABC"
  iload 5
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  iload 7
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  aload 9
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/lessEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-102   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 5
  invokestatic RTS/intToString(I)Ljava/lang/String;
  iload 7
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  aload 9
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "ACB"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  iload 5
  invokestatic RTS/intToString(I)Ljava/lang/String;
  iload 7
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  aload 9
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "ABC"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/lessEquals(Ljava/lang/String;Ljava/lang/String;)I
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-103   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 5
  iload 6
  iadd
  bipush 11
  iadd
  iload 5
  iload 6
  iadd
  bipush 10
  iadd
  if_icmple Cmp1_35
  iconst_0
  goto Cmp2_35
Cmp1_35:
  iconst_1
Cmp2_35:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-104   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload 5
  iload 6
  bipush 2
  imul
  iadd
  bipush 1
  iadd
  iload 5
  iload 6
  bipush 2
  imul
  iadd
  if_icmple Cmp1_36
  iconst_0
  goto Cmp2_36
Cmp1_36:
  iconst_1
Cmp2_36:
  invokestatic RTS/plnBool(I)V
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
  ldc "99-105     ABC | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "AB"
  ldc "C"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-106     ABC | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "A"
  ldc "B"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "C"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-107     AB3 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "A"
  ldc "B"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  bipush 3
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-108     A2C | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "A"
  bipush 2
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "C"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-109     1BC | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  invokestatic RTS/intToString(I)Ljava/lang/String;
  ldc "B"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "C"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-110 ABfalse | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "A"
  ldc "B"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  iconst_0
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-111 AfalseC | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "A"
  iconst_0
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "C"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-112 falseBC | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  ldc "B"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ldc "C"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-113 12false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  invokestatic RTS/intToString(I)Ljava/lang/String;
  bipush 2
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  iconst_0
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-114 1false3 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 1
  invokestatic RTS/intToString(I)Ljava/lang/String;
  iconst_0
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  bipush 3
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-115 false23 | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_0
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  bipush 2
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  bipush 3
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
  ldc "99-116    AB5  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "AB"
  bipush 2
  bipush 3
  iadd
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-117    5AB  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 2
  bipush 3
  iadd
  invokestatic RTS/intToString(I)Ljava/lang/String;
  ldc "AB"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-118   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 4
  bipush 2
  iadd
  bipush 4
  bipush 2
  imul
  if_icmplt Cmp1_37
  iconst_0
  goto Cmp2_37
Cmp1_37:
  iconst_1
Cmp2_37:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-119   false | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iload_1
  iload_2
  iadd
  iload_1
  iload_2
  imul
  if_icmpgt Cmp1_38
  iconst_0
  goto Cmp2_38
Cmp1_38:
  iconst_1
Cmp2_38:
  invokestatic RTS/plnBool(I)V
; write
  ldc "99-120   falseA| "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  iconst_1
  ixor
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  ldc "A"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-121   Atrue | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "A"
  iload_3
  iconst_1
  ixor
  invokestatic RTS/boolToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-122   -3A   | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  bipush 3
  ineg
  invokestatic RTS/intToString(I)Ljava/lang/String;
  ldc "A"
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-123   A-3   | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "A"
  bipush 3
  ineg
  invokestatic RTS/intToString(I)Ljava/lang/String;
  invokestatic RTS/concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-124   true  | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  iconst_1
  bipush 3
  bipush 1
  if_icmplt Cmp1_39
  iconst_0
  goto Cmp2_39
Cmp1_39:
  iconst_1
Cmp2_39:
  ior
  invokestatic RTS/plnBool(I)V
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
  ldc "99-125    OK   | "
  invokestatic RTS/pString(Ljava/lang/String;)V

; if-then
  iconst_1
  ifeq IfThen_1
; write
  ldc "OK"
  invokestatic RTS/pString(Ljava/lang/String;)V
IfThen_1:

; write
  ldc "\n"
  invokestatic RTS/pString(Ljava/lang/String;)V
; write
  ldc "99-126    OK   | "
  invokestatic RTS/pString(Ljava/lang/String;)V

; if-then
  iconst_0
  ifeq IfThen_2
; write
  ldc "not "
  invokestatic RTS/pString(Ljava/lang/String;)V
IfThen_2:

; write
  ldc "OK\n"
  invokestatic RTS/pString(Ljava/lang/String;)V
; write
  ldc "99-127    OK   | "
  invokestatic RTS/pString(Ljava/lang/String;)V

; if-then
  bipush 3
  bipush 2
  if_icmpgt Cmp1_40
  iconst_0
  goto Cmp2_40
Cmp1_40:
  iconst_1
Cmp2_40:
  ifeq IfThen_3
; write
  ldc "OK"
  invokestatic RTS/pString(Ljava/lang/String;)V
IfThen_3:

; write
  ldc "\n"
  invokestatic RTS/pString(Ljava/lang/String;)V
; write
  ldc "99-128    OK   | "
  invokestatic RTS/pString(Ljava/lang/String;)V

; if-then
  bipush 3
  bipush 2
  if_icmplt Cmp1_41
  iconst_0
  goto Cmp2_41
Cmp1_41:
  iconst_1
Cmp2_41:
  ifeq IfThen_4
; write
  ldc "not "
  invokestatic RTS/pString(Ljava/lang/String;)V
IfThen_4:

; write
  ldc "OK\n"
  invokestatic RTS/pString(Ljava/lang/String;)V
; vardec
  bipush 3
  istore 11
; vardec
  bipush 2
  istore 12
; write
  ldc "99-129    OK   | "
  invokestatic RTS/pString(Ljava/lang/String;)V

; if-then
  iload 11
  iload 12
  if_icmpgt Cmp1_42
  iconst_0
  goto Cmp2_42
Cmp1_42:
  iconst_1
Cmp2_42:
  ifeq IfThen_5
; write
  ldc "OK"
  invokestatic RTS/pString(Ljava/lang/String;)V
IfThen_5:

; write
  ldc "\n"
  invokestatic RTS/pString(Ljava/lang/String;)V
; write
  ldc "99-130    OK   | "
  invokestatic RTS/pString(Ljava/lang/String;)V

; if-then
  iload 11
  iload 12
  if_icmplt Cmp1_43
  iconst_0
  goto Cmp2_43
Cmp1_43:
  iconst_1
Cmp2_43:
  ifeq IfThen_6
; write
  ldc "not "
  invokestatic RTS/pString(Ljava/lang/String;)V
IfThen_6:

; write
  ldc "OK\n"
  invokestatic RTS/pString(Ljava/lang/String;)V
; writeln
  ldc "---------------+------------------+"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; writeln
  ldc "     expected  | found            |"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-131    15   | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; vardec
  bipush 0
  istore 13
; vardec
  bipush 3
  istore 14

WhileStart_1:
; condition
  iload 14
  bipush 0
  if_icmpgt Cmp1_44
  iconst_0
  goto Cmp2_44
Cmp1_44:
  iconst_1
Cmp2_44:
  ifeq WhileEnd_1
; assign
  iload 13
  bipush 5
  iadd
  istore 13
; assign
  iload 14
  bipush 1
  isub
  istore 14
  goto WhileStart_1
WhileEnd_1:

; writeln
  iload 13
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-132    15   | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; assign
  bipush 0
  istore 13
; assign
  bipush 0
  istore 14

WhileStart_2:
; condition
  iload 14
  bipush 0
  if_icmpgt Cmp1_45
  iconst_0
  goto Cmp2_45
Cmp1_45:
  iconst_1
Cmp2_45:
  ifeq WhileEnd_2
; assign
  iload 13
  bipush 5
  iadd
  istore 13
; assign
  iload 14
  bipush 1
  isub
  istore 14
  goto WhileStart_2
WhileEnd_2:

; writeln
  iload 13
  invokestatic RTS/plnInt(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
; write
  ldc "99-133    15   | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; vardec
  bipush 0
  istore 15
; vardec
  bipush 3
  istore 16

DoUntil_1:
; assign
  iload 15
  bipush 5
  iadd
  istore 15
; assign
  iload 16
  bipush 1
  isub
  istore 16
; condition
  iload 16
  bipush 0
  if_icmple Cmp1_46
  iconst_0
  goto Cmp2_46
Cmp1_46:
  iconst_1
Cmp2_46:
  ifeq DoUntil_1

; writeln
  iload 15
  invokestatic RTS/plnInt(I)V
; write
  ldc "99-134    5    | "
  invokestatic RTS/pString(Ljava/lang/String;)V
; assign
  bipush 0
  istore 15
; assign
  bipush 0
  istore 16

DoUntil_2:
; assign
  iload 15
  bipush 5
  iadd
  istore 15
; assign
  iload 16
  bipush 1
  isub
  istore 16
; condition
  iload 16
  bipush 0
  if_icmple Cmp1_47
  iconst_0
  goto Cmp2_47
Cmp1_47:
  iconst_1
Cmp2_47:
  ifeq DoUntil_2

; writeln
  iload 15
  invokestatic RTS/plnInt(I)V
; writeln
  ldc "---------------+-------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V

  ldc "-------------------------------"
  invokestatic RTS/plnString(Ljava/lang/String;)V
  return
.end method
