// ancestor01: Parser fuer die (kontextfreie, Typ-2-) Grammatik A1

// A1 = { mother, father, grandmother, grandfather, greatgrandmother,
// greatgrandfather, greatgreatgrandmother, ...,
// greatgreatgreatgreatgreatgrandfather, ...}

phrase ancestor01
  rule ancestor01 : ancestor01_1
  rule ancestor01 : ancestor01_2
  rule ancestor01 : ancestor01_3

phrase ancestor01_1
  rule ancestor01_1 : "mother"
  rule ancestor01_1 : "father"

phrase ancestor01_2
  rule ancestor01_2 : "grand" ancestor01_1

phrase ancestor01_3
  rule ancestor01_3 : "great" ancestor01_2
  rule ancestor01_3 : "great" ancestor01_3

root
  ancestor01
  print("Successfully parsed!")