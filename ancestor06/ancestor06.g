// ancestor06: Schreiben Sie einen Compiler der Worte der ancestor language A3 in entsprechende Worte der Ahnensprache A4 uebersetzt.

// Ancestor language A3 (source language) | Ahnensprache A4 (Zielsprache)
// ---------------------------------------+-------------------------------------
// The mother of Mary                     | Die mutter von Maria
// The father of Mary                     | Der vater von Maria
// The mother of John                     | Die mutter von Johann
// The father of John                     | Der vater von Johann
// The mother of the mother of Mary       | Eine grossmutter von Maria
// The mother of the father of Mary       | Eine grossmutter von Maria
// The father of the mother of Mary       | Ein grossvater von Maria
// The father of the father of Mary       | Ein grossvater von Maria
// The mother of the mother of John       | Eine grossmutter von Johann
// The mother of the father of John       | Eine grossmutter von Johann
// The father of the mother of John       | Ein grossvater von Johann
// The father of the father of John       | Ein grossvater von Johann
// ...                                    | ...
// The mother of the mother of the father | Eine ururgrossmutter von Johann
//   of the mother of John                |
// ...                                    | ...


// Types ///////////////////////////////////////////////////////////////////////

type gender
  m()
  w()

type person
  jo()
  ma()

type AS_ancestor06
  a06(gender, generation:int, person)

// Parsing /////////////////////////////////////////////////////////////////////

phrase ancestor06(-> AS_ancestor06)
  rule ancestor06(-> a06(g1, g2, g3)) : left(-> g1) center(-> g2) right(-> g3)

phrase left(-> gender)
  rule left(-> w()) : "The" "mother"
  rule left(-> m()) : "The" "father"

phrase center(-> int)
  rule center(-> 1)
  rule center(-> n+1) : "of" "the" "mother" center(-> n)
  rule center(-> n+1) : "of" "the" "father" center(-> n)

phrase right(-> person)
  rule right(-> ma()) : "of" "Mary"
  rule right(-> jo()) : "of" "John"

// Compiling ///////////////////////////////////////////////////////////////////

proc   out06(AS_ancestor06)
  rule out06(a06(g1, g2, g3)) : out06_1(g1, g2) out06_2(g2)
                                out06_3(g1)     out06_4(g3)

proc   out06_1(gender, int)
  rule out06_1(m(), 1) : "Der "
  rule out06_1(m(), _) : "Ein "
  rule out06_1(w(), 1) : "Die "
  rule out06_1(w(), _) : "Eine "

proc   out06_2(int)
  rule out06_2(n) : Greater(n, 2) "ur"    out06_2(n-1)
  rule out06_2(n) : Equal(n, 2)   "gross" out06_2(n-1)
  rule out06_2(1)

proc   out06_3(gender)
  rule out06_3(m()) : "vater "
  rule out06_3(w()) : "mutter "

proc   out06_4(person)
  rule out06_4(jo()) : "von Johann\n"
  rule out06_4(ma()) : "von Maria\n"

// Root ////////////////////////////////////////////////////////////////////////

root
  ancestor06(-> AS)
  out06(AS)
