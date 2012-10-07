type AS_ancestor
  mo()
  fa()
  g(AS_ancestor)

root
  ancestor(-> AS)
  trout(AS)

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

proc   trout(AS_ancestor)
  rule trout(g(g(A))) : "ur" trout(g(A))
  rule trout(g(A))    : "gross" trout(A)
  rule trout(mo())    : "mutter\n"
  rule trout(fa())    : "vater\n"