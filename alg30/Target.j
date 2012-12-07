;Target produced by compiler alg30                 
;at the Beuht Hochschule, TB5-CPB,WS12/13          
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
   ;--- writeln
   ldc "Hello world!"
   invokestatic RTS/plnString(Ljava/lang/String;)V
   ldc "That's all!"                             
   invokestatic RTS/plnString(Ljava/lang/String;)V 
   ldc "-------------------------------"         
   invokestatic RTS/plnString(Ljava/lang/String;)V 
   return                                          
.end method                                        
