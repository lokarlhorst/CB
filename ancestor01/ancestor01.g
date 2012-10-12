phrase ancestor
  rule ancestor : ancestor1
  rule ancestor : ancestor2
  rule ancestor : ancestor3

phrase ancestor1
  rule ancestor1 : "mother"
  rule ancestor1 : "father"

phrase ancestor2
  rule ancestor2 : "grand" ancestor1

phrase ancestor3
  rule ancestor3 : "great" ancestor2
  rule ancestor3 : "great" ancestor3

root
  ancestor