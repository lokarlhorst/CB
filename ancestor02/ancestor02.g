// ancestor02: Ein Compiler, der Ahnen in Zahlen wie folgt uebersetzt:

// mutter           -> 1
// vater            -> 1
// grossmutter      -> 2
// grossvater       -> 2
// urgrossmutter    -> 3
// urgrossvater     -> 3
// ururgrossmutter  -> 4
// ...              -> ...
// urururgrossvater -> 5
// ...              -> ...

phrase ancestor02(-> int)
  rule ancestor02(-> n) : ancestor02_1(-> n)
  rule ancestor02(-> n) : ancestor02_2(-> n)
  rule ancestor02(-> n) : ancestor02_3(-> n)

phrase ancestor02_1(-> int)
  rule ancestor02_1(-> 1) : "mother"
  rule ancestor02_1(-> 1) : "father"

phrase ancestor02_2(-> int)
  rule ancestor02_2(-> n+1) : "grand" ancestor02_1(-> n)

phrase ancestor02_3(-> int)
  rule ancestor02_3(-> n+1) : "great" ancestor02_2(-> n)
  rule ancestor02_3(-> n+1) : "great" ancestor02_3(-> n)

root
  ancestor02(-> res)
  print(res)