type AS_ancestor
  mo()
  fa()
  g(AS_ancestor)

phrase ancestor(-> AS_ancestor)
  rule ancestor(-> C) : ancestor1(-> C)
  rule ancestor(-> C) : ancestor2(-> C)
  rule ancestor(-> C) : ancestor3(-> C)

phrase ancestor1(-> AS_ancestor)
  rule ancestor1(-> mo()) : "mother"
  rule ancestor1(-> fa()) : "father"

phrase ancestor2(-> AS_ancestor)
  rule ancestor2(-> g(A)) : "grand" ancestor1(-> A)

phrase ancestor3(-> AS_ancestor)
  rule ancestor3(-> g(B)) : "great" ancestor2(-> B)
  rule ancestor3(-> g(B)) : "great" ancestor3(-> B)

root
  ancestor(-> AS)
  print AS