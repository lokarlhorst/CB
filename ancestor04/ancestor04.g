// ancestor04: ein Compiler, der ein Wort der ancestor language A1
// in eine entsprechende Liste von Strings
// (aus der Menge {mutter, vater, gross, ur}) uebersetzt und
// diese Liste dann als ein Wort der ancestor language A2 ausgibt

// A2 = { mutter, vater, grossmutter, grossvater, urgrossmutter,
// urgrossvater, ururgrossmutter, ... }

// Beispiel: Das Wort greatgreatgrandfather aus A1 soll in die Liste
// (in Gentle-Notation) string["ur", "ur", "gross", "vater"] uebersetzt
// werden und diese Liste soll als das Wort ururgrossvater aus A2
// auf dem Bildschirm ausgegeben werden.

phrase ancestor04(-> string[])
  rule ancestor04(-> l) : ancestor04_1(-> l)
  rule ancestor04(-> l) : ancestor04_2(-> l)
  rule ancestor04(-> l) : ancestor04_3(-> l)

phrase ancestor04_1(-> string[])
  rule ancestor04_1(-> string["mutter"]) : "mother"
  rule ancestor04_1(-> string["vater"] ) : "father"

phrase ancestor04_2(-> string[])
  rule ancestor04_2(-> string["gross"::s]) : "grand" ancestor04_1(-> s)

phrase ancestor04_3(-> string[])
  rule ancestor04_3(-> string["ur"::sl]) : "great" ancestor04_2(-> sl)
  rule ancestor04_3(-> string["ur"::sl]) : "great" ancestor04_3(-> sl)

proc   out04(string[])
  rule out04(string[])     : "\n"
  rule out04(string[e::l]) : $e out04(l)

root
  ancestor04(-> res)
  out04(res)