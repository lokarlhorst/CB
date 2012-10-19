// ancestor07: Schreiben Sie einen Compiler der Worte der Ahnensprache A5 in entsprechende Worte der ancestor language A6 uebersetzt.

// -----------------------------------+-----------------------------------------
// Ahnensprache A5 (Zielsprache)      | Ancestor language A6 (target language)
// -----------------------------------+-----------------------------------------
// Die Mutter von Maria               | The mother of Mary
// Der Vater von Maria                | The father of Mary
// Die Mutter von Johann              | The mother of John
// Der Vater von Johann               | The father of John
// Die Mutter der Mutter von Maria    | A grandmother of Mary
// Die Mutter des Vaters von Maria    | A grandmother of Mary
// Der Vater der Mutter von Maria     | A grandfather of Mary
// Der Vater des Vaters von Maria     | A grandfather of Mary
// Die Mutter der Mutter von Johann   | A grandmother of John
// Die Mutter des Vaters von Johann   | A grandmother of John
// Der Vater der Mutter von Johann    | A grandfather of John
// Der Vater des Vaters von Johann    | A grandfather of John
// ...                                | ...
// Die Mutter der Mutter des Vaters   | A greatgreatgrandmother of John
//   der Mutter von Johann            |
// ...                                | ...


// Types ///////////////////////////////////////////////////////////////////////

type gender
  m()
  w()

type person
  jo()
  ma()

type AS_ancestor07
  a07(gender, generation:int, person)

// Parsing /////////////////////////////////////////////////////////////////////

phrase ancestor07(-> AS_ancestor07)
  rule ancestor07(-> a07(g1, g2, g3)) : left(-> g1) center(-> g2) right(-> g3)

phrase left(-> gender)
  rule left(-> m()) : "Der" "Vater"
  rule left(-> w()) : "Die" "Mutter"

phrase center(-> int)
  rule center(-> 1)
  rule center(-> n+1) : "der" "Mutter" center(-> n)
  rule center(-> n+1) : "des" "Vaters" center(-> n)

phrase right(-> person)
  rule right(-> ma()) : "von" "Maria"
  rule right(-> jo()) : "von" "Johann"

// Compiling ///////////////////////////////////////////////////////////////////

proc   out07(AS_ancestor07)
  rule out07(a07(g1, g2, g3)) : out07_1(g2) out07_2(g2) out07_3(g1) out07_4(g3)

proc   out07_1(int)
  rule out07_1(1) : "The "
  rule out07_1(_) : "A "

proc   out07_2(int)
  rule out07_2(n) : Greater(n, 2) "great" out07_2(n-1)
  rule out07_2(n) : Equal(n, 2)   "grand" out07_2(n-1)
  rule out07_2(n)

proc   out07_3(gender)
  rule out07_3(m()) : "father "
  rule out07_3(w()) : "mother "

proc   out07_4(person)
  rule out07_4(jo()) : "of John\n"
  rule out07_4(ma()) : "of Mary\n"

// Root ////////////////////////////////////////////////////////////////////////

root
  ancestor07(-> AS)
  out07(AS)
