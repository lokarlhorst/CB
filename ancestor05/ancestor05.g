// ancestor05: Der Compiler aus ancestor03 erweitert zu einem Compiler,
// der Worte der ancestor language A1 in eine Zwischendarstellung und die
// Zwischendarstellung dann in ein Wort der Ahnensprache A2 uebersetzt
// (siehe vorige Aufgabe ancestor04) und ausgibt.

// Dieser Compiler soll also das Gleiche leisten wie der in ancestor04,
// aber auf eine etwas andere Weise.

type AS_ancestor
  mo()
  fa()
  g(AS_ancestor)

phrase ancestor05(-> AS_ancestor)
  rule ancestor05(-> C) : ancestor05_1(-> C)
  rule ancestor05(-> C) : ancestor05_2(-> C)
  rule ancestor05(-> C) : ancestor05_3(-> C)

phrase ancestor05_1(-> AS_ancestor)
  rule ancestor05_1(-> mo()) : "mother"
  rule ancestor05_1(-> fa()) : "father"

phrase ancestor05_2(-> AS_ancestor)
  rule ancestor05_2(-> g(A)) : "grand" ancestor05_1(-> A)

phrase ancestor05_3(-> AS_ancestor)
  rule ancestor05_3(-> g(B)) : "great" ancestor05_2(-> B)
  rule ancestor05_3(-> g(B)) : "great" ancestor05_3(-> B)

proc   trout(AS_ancestor)
  rule trout(g(g(A))) : "ur" trout(g(A))
  rule trout(g(A))    : "gross" trout(A)
  rule trout(mo())    : "mutter\n"
  rule trout(fa())    : "vater\n"

root
  ancestor05(-> AS)
  trout(AS)