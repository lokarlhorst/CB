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
   ldc "Here we go!"                             
   invokestatic RTS/plnString(Ljava/lang/String;)V 
   ;--- write
   ldc "write"
   invokestatic RTS/pString(Ljava/lang/String;)V
   ;--- writeln
   ldc "writeln"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   ;--- write
   ldc "123"
   invokestatic RTS/pInt(Ljava/lang/Int;)V
   ;--- writeln
   ldc "456"
   invokestatic RTS/plnInt(Ljava/lang/Int;)V
   ;--- write
   ldc "0"
   invokestatic RTS/pBool(Ljava/lang/Int;)V
   ;--- writeln
   ldc "1"
   invokestatic RTS/plnBool(Ljava/lang/Int;)V
   ldc "That's all!"                             
   invokestatic RTS/plnString(Ljava/lang/String;)V 
   ldc "-------------------------------"         
   invokestatic RTS/plnString(Ljava/lang/String;)V 
   return                                          
.end method                                        
