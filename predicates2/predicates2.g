// -----------------------------------------------------------------------
// File pred01\prob01.g
// This file gives you the chance to program about two dozen predicates
// (procedures and conditions) and test each of your solutions immediately
// after typing it into this file.
// -----------------------------------------------------------------------
// WHAT TO DO WITH THIS PROGRAM
//
// 1. Compile this program (with the Gentle compiler) and run it.
//    As a result you should see 2 error messages which indicate, that
//    the procedure length is not yet producing the expected output.
//    In these error messages
//    IN1  is the 1. input parameter, with which length was called.
//    EXP1 is the expected value of the 1. output parameter of length.
//    FND1 is the "found"  value of the 1. output parameter of length
//         (the value actually produced by length).
// 2. Find (in this file) the declaration of proc length and correct it.
//    Repeat steps 1. and 2. until length produces the expected output.
// 3. In the root predicate uncomment (or: activate) the two calls of
//    the tst-predicate tst_sum. Then repeat steps 2. and 1. with
//    the proc sum (instead of proc length) until sum produces the
//    expected output.
//    Repeat this step with all the commented procedure calls
//    in the root predicate (tst_nrOfPosElems, tst_nrOfNegElems, ...etc.)
// -----------------------------------------------------------------------
// GENERAL REMARKS:
//
// 1. You can add (in the root predicate) additional calls of the
//    test procedures tst_length, tst_sum, tst_nrOfPosElems etc.
// 2. Do not change the call of init() in the root predicate or
//    code below the star line // *******..., unless you clearly know
//    what you are doing.
// 3. It is recommended (but not strictly necessary) to program the
//    predicates length, sum, nrOfPosElems, ... etc. in the sequence
//    they are declared here. However, a few of these predicates should
//    be called from other predicates and therefore should be programmed
//    before them (e.g. isOdd should be programmed before nrOfOddElems).
// 4. Error messages like e.g. "Failure in predicate length" tell you
//    that an expected value and a value found are not equal. That may
//    have one of two reasons:
//    - The predicate which produced the found value is still incorrect.
//    - The expected value (in the call of the test procedure,
//      e.g. tst_length) is incorrect and should be replaced.
// 5. Some of the predicates are very similar to a previous predicate
//    (e.g. nrOfNegElems is very similar to nrOfPosElems). Try to write
//    these "easy predicates" as fast as you can and without looking at
//    the previous predicate. That is a recommended training for any
//    written tests.
// -----------------------------------------------------------------------
// The root predicate contains mainly calls of tst-predicates.
// Initially, most of the calls are commented (i.e. out-commented).
// You should activate (uncomment) the calls of tst_xxx after you
// have typed your rules for predicate xxx into this file.

root
  init()                // Do not change this line

  tst_length            (int[+5, -3, +5, +5, -3, -3,  0],   7)
  tst_length            (int[],                             0)

  tst_sum               (int[+5, -3, +5, +5, -3, -3,  0],   6)
  tst_sum               (int[-1, +2, -3, +4, -5, +6, -7],  -4)

  tst_nrOfPosElems      (int[+5, -3, +5, +5, -3, -3,  0],   3)
  tst_nrOfPosElems      (int[-1, +2, -3, +4, -5, +6, -7],   3)

  tst_nrOfNegElems      (int[+5, -3, +5, +5, -3, -3,  0],   3)
  tst_nrOfNegElems      (int[-1, +2, -3, +4, -5, +6, -7],   4)

  tst_sumOfPosElems     (int[+5, -3, +5, +5, -3, -3,  0],  15)
  tst_sumOfPosElems     (int[-1, +2, -3, +4, -5, +6, -7],  12)

  tst_sumOfNegElems     (int[+5, -3, +5, +5, -3, -3,  0],  -9)
  tst_sumOfNegElems     (int[-1, +2, -3, +4, -5, +6, -7], -16)

  tst_maxPosElem        (int[+5, -3, +5, +5, -3, -3,  0],   5)
  tst_maxPosElem        (int[-1, +2, -3, +4, -5, +6, -7],   6)

  tst_minNegElem        (int[+5, -3, +5, +5, -3, -3,  0],  -3)
  tst_minNegElem        (int[-1, +2, -3, +4, -5, +6, -7],  -7)

  tst_isOdd             (3, "succ")
  tst_isOdd             (6, "fail")

  tst_isEven            (6, "succ")
  tst_isEven            (3, "fail")

  tst_nrOfEvenElems     (int[+5, -3, +5, +5, -3, -3,  0],   1)
  tst_nrOfEvenElems     (int[-1, +2, -3, +4, -5, +6, -7],   3)

  tst_nrOfOddElems      (int[+5, -3, +5, +5, -3, -3,  0],   6)
  tst_nrOfOddElems      (int[-1, +2, -3, +4, -5, +6, -7],   4)

  tst_nrsOfPosNegElems  (int[+5, -3, +5, +5, -3, -3,  0], 3, 3)
  tst_nrsOfPosNegElems  (int[-1, +2, -3, +4, -5, +6, -7], 3, 4)

  tst_nrsOfNegEvenElems (int[+5, -3, +5, +5, -3, -3,  0], 3, 1)
  tst_nrsOfNegEvenElems (int[-1, +2, -3, +4, -5, +6, -7], 4, 3)

  tst_listOfPosElems    (int[+5, -3, +5, +5, -3, -3,  0], int[5, 5, 5])
  tst_listOfPosElems    (int[-1, +2, -3, +4, -5, +6, -7], int[2, 4, 6])

  tst_listOfNegElems    (int[+5, -3, +5, +5, -3, -3,  0], int[-3, -3, -3])
  tst_listOfNegElems    (int[-1, +2, -3, +4, -5, +6, -7], int[-1, -3, -5, -7])

  tst_listsOfPosNegElems(int[+5, -3, +5, +5, -3, -3,  0], int[5, 5, 5], int[-3, -3, -3])
  tst_listsOfPosNegElems(int[-1, +2, -3, +4, -5, +6, -7], int[2, 4, 6], int[-1, -3, -5, -7])

  tst_listOfEvenElems   (int[+5, -3, +5, +5, -3, -3,  0], int[0])
  tst_listOfEvenElems   (int[-1, +2, -3, +4, -5, +6, -7], int[2, 4, 6])

  tst_nrOfEqualNeighbors(int[+5, -3, +5, +5, -3, -3,  0],   2)
  tst_nrOfEqualNeighbors(int[-1, +2, -3, +4, -5, +6, -7],   0)
  tst_nrOfEqualNeighbors(int[5, 5, 5],   1)

  tst_containsElem      (int[+5, -3, +5, +5, -3, -3,  0],   0, "succ")
  tst_containsElem      (int[-1, +2, -3, +4, -5, +6, -7],  +5, "fail")

  tst_containsList      (int[+5, -3, +5, +5, -3, -3,  0], int[5, 0, -3],  "succ")
  tst_containsList      (int[+5, -3, +5, +5, -3, -3,  0], int[5, 0,  3],  "fail")
  tst_containsList      (int[1, 2], int[2,1,2], "succ")

  tst_containsEqualElems(int[+5, -3, +5, +5, -3, -3,  0], "succ")
  tst_containsEqualElems(int[-1, +2, -3, +4, -5, +6, -7], "fail")

  tst_containEqualElems (int[1, 2, 3], int[3, 1, 2], "succ")
  tst_containEqualElems (int[1, 2, 3], int[1, 2],    "fail")
  tst_containEqualElems (int[1, 2, 2], int[2, 1],    "succ")

  tst_isSortedAscending (int[1, 2, 3], "succ")
  tst_isSortedAscending (int[1, 2, 1], "fail")

  tst_isSortedDescending (int[3, 2, 1], "succ")
  tst_isSortedDescending (int[1, 2, 1], "fail")

  // tst_firstElem(int[],   int[])
  // tst_firstElem(int[10], int[10])
  // tst_firstElem(int[10, 20, 30], int[10])

  // tst_butFirstElem(int[],   int[])
  // tst_butFirstElem(int[10], int[])
  // tst_butFirstElem(int[10, 20, 30], int[20, 30])

  // tst_lastElem(int[],   int[])
  // tst_lastElem(int[10], int[10])
  // tst_lastElem(int[10, 20, 30], int[30])

  // tst_butLastElem(int[],   int[])
  // tst_butLastElem(int[10], int[])
  // tst_butLastElem(int[10, 20, 30], int[10, 20])

  // tst_reverse(int[],   int[])
  // tst_reverse(int[10], int[10])
  // tst_reverse(int[10, 20, 30], int[30, 20, 10])

  // The output is terminated with a summary line:
  Get-NrOfTests   (-> T)
  Get-NrOfFailures(-> F)
  "---------------------------------------------------------------\n"
  "Number of tests: " $T ", number of failures: " $F "\n"
  "---------------------------------------------------------------\n"

// Needed to make Gentle and Gecco work together
phrase startPhrase
  rule startPhrase

// -----------------------------------------------------------------------
// Now come the predicates you should program.
// Initially their declarations are compilable but semantically incorrect.
// You should correct and test them one by one.
// --------------------------------------------------------------------- 1
// Computes the length of list.
proc   length(list:int[] -> length:int)
  rule length(int[]      -> 0)
  rule length(int[E::R]  -> LENGTH+1) : length(R -> LENGTH)
// --------------------------------------------------------------------- 2
// Computes the sum of the elements of list.
proc   sum(list:int[] -> sum:int)
  rule sum(int[]      -> 0)
  rule sum(int[E::R]  -> E + SUM) : sum(R -> SUM)
// --------------------------------------------------------------------- 3
// Computes the number of positive elements in list.
// Remember: 0 is not positive.
proc   nrOfPosElems(list:int[] -> nr:int)
  rule nrOfPosElems(int[]      -> 0)
  rule nrOfPosElems(int[E::R]  -> N+1) : Greater(E, 0)
       nrOfPosElems(R -> N)
  rule nrOfPosElems(int[E::R]  -> N  ) : LessOrEqual(E, 0)
       nrOfPosElems(R -> N)
// --------------------------------------------------------------------- 4
// Computes the number of negative elements in list.
// Remember: 0 is not negative.
proc   nrOfNegElems(list:int[] -> nr:int)
  rule nrOfNegElems(int[]      -> 0)
  rule nrOfNegElems(int[E::R]  -> N+1) : Less(E, 0)
       nrOfNegElems(R -> N)
  rule nrOfNegElems(int[E::R]  -> N  ) : GreaterOrEqual(E, 0)
       nrOfNegElems(R -> N)

// Computes the sum of all positive numbers in list.
proc   sumOfPosElems(list:int[] -> sum:int)
  rule sumOfPosElems(int[]      -> 0)
  rule sumOfPosElems(int[E::R]  -> E+SUM) : Greater(E, 0)
       sumOfPosElems(R -> SUM)
  rule sumOfPosElems(int[E::R]  -> SUM  ) : LessOrEqual(E, 0)
       sumOfPosElems(R -> SUM)

// Computes the sum of all negative numbers in list.
proc   sumOfNegElems(list:int[] -> sum:int)
  rule sumOfNegElems(int[]      -> 0)
  rule sumOfNegElems(int[E::R]  -> E+SUM) : Less(E, 0)
       sumOfNegElems(R -> SUM)
  rule sumOfNegElems(int[E::R]  -> SUM  ) : GreaterOrEqual(E, 0)
       sumOfNegElems(R -> SUM)

// Computes the largest positive element (max) in list
// (and 0 if list does not contain positive numbers).
proc   maxPosElem(list:int[] -> max:int)
  rule maxPosElem(int[]      -> 0)
  rule maxPosElem(int[E::R]  -> E)  : maxPosElem(R -> E2) GreaterOrEqual(E, E2)
  rule maxPosElem(int[E::R]  -> E2) : maxPosElem(R -> E2) Greater(E2, E)
  rule maxPosElem(int[E::R]  -> 0)  : LessOrEqual(E, 0)

// Computes the smallest negative element (min) in list
// (and 0 if list does not contain negative numbers).
proc   minNegElem(list:int[] -> min:int)
  rule minNegElem(int[]      -> 0)
  rule minNegElem(int[E::R]  -> E)  : minNegElem(R -> E2) LessOrEqual(E, E2)
  rule minNegElem(int[E::R]  -> E2) : minNegElem(R -> E2) Less(E2, E)
  rule minNegElem(int[E::R]  -> 0)  : GreaterOrEqual(E, 0)

// Succeeds iff number is even.
condition isEven(number:int)
  rule    isEven(N) : Equal(N - N/2*2, 0)

// Succeeds iff number is odd.
condition isOdd(number:int)
  rule    isOdd(N) : mod(N, 2 -> REST) Unequal(REST, 0)

// Computes the number of even elements (nrEven) in list.
proc   nrOfEvenElems(list:int[] -> nrEven:int)
  rule nrOfEvenElems(int[]      -> 0)
  rule nrOfEvenElems(int[E::R]  -> N+1) : isEven(E)
       nrOfEvenElems(R -> N)
  rule nrOfEvenElems(int[E::R]  -> N  ) : isOdd (E)
       nrOfEvenElems(R -> N)

// Computes the number of odd elements (nrOdd) in list.
proc   nrOfOddElems(list:int[] -> nrOdd:int)
  rule nrOfOddElems(int[]      -> 0)
  rule nrOfOddElems(int[E::R]  -> N+1) : isOdd (E)
       nrOfOddElems(R -> N)
  rule nrOfOddElems(int[E::R]  -> N  ) : isEven(E)
       nrOfOddElems(R -> N)

// Computes the number of positive elements (nrPos)
// and      the number of negative elements (nrNeg) in list.
proc   nrsOfPosNegElems(list:int[] -> nrPos:int, nrNeg:int)
  rule nrsOfPosNegElems(int[]      -> 0, 0)
  rule nrsOfPosNegElems(int[E::R]  -> NP+1, NN) : Greater(E, 0)
       nrsOfPosNegElems(R -> NP, NN)
  rule nrsOfPosNegElems(int[E::R]  -> NP, NN+1) : Less   (E, 0)
       nrsOfPosNegElems(R -> NP, NN)
  rule nrsOfPosNegElems(int[E::R]  -> NP, NN  ) : Equal  (E, 0)
       nrsOfPosNegElems(R -> NP, NN)

// Computes the number of positive elements (nrPos)
// and      the number of even     elements (nrEven) in list.
proc   nrsOfPosEvenElems(list:int[] -> nrPos:int, nrEven:int)
  rule nrsOfPosEvenElems(int[]      -> 0, 0)
  rule nrsOfPosEvenElems(int[E::R]  -> NP+1, NE+1) :
       nrsOfPosEvenElems(R -> NP, NE) Greater(E, 0) isEven(E)
  rule nrsOfPosEvenElems(int[E::R]  -> NP+1, NE  ) :
       nrsOfPosEvenElems(R -> NP, NE) Greater(E, 0)
  rule nrsOfPosEvenElems(int[E::R]  -> NP  , NE+1) :
       nrsOfPosEvenElems(R -> NP, NE) isEven(E)
  rule nrsOfPosEvenElems(int[E::R]  -> NP  , NE  ) :
       nrsOfPosEvenElems(R -> NP, NE)

// Computes the number of negative elements (nrNeg)
// and      the number of even     elements (nrEven) in list.
proc   nrsOfNegEvenElems(list:int[] -> nrNeg:int, nrEven:int)
  rule nrsOfNegEvenElems(int[]      -> 0, 0)
  rule nrsOfNegEvenElems(int[E::R]  -> NN+1, NE+1) :
       nrsOfNegEvenElems(R -> NN, NE) Less(E, 0) isEven(E)
  rule nrsOfNegEvenElems(int[E::R]  -> NN+1, NE  ) :
       nrsOfNegEvenElems(R -> NN, NE) Less(E, 0)
  rule nrsOfNegEvenElems(int[E::R]  -> NN  , NE+1) :
       nrsOfNegEvenElems(R -> NN, NE) isEven(E)
  rule nrsOfNegEvenElems(int[E::R]  -> NN  , NE  ) :
       nrsOfNegEvenElems(R -> NN, NE)

// The listPos contains all positive elements of list.
// Remember: 0 is not positive.
proc   listOfPosElems(list:int[] -> listPos:int[])
  rule listOfPosElems(int[]      -> int[])
  rule listOfPosElems(int[E::R]  -> int[E::LP]) : Greater(E, 0)
       listOfPosElems(R -> LP)
  rule listOfPosElems(int[E::R]  -> LP)         : LessOrEqual(E, 0)
       listOfPosElems(R -> LP)

// The listPos contains all negative elements of list.
// Remember: 0 is not negative.
proc   listOfNegElems(list:int[] -> listNeg:int[])
  rule listOfNegElems(int[]      -> int[])
  rule listOfNegElems(int[E::R]  -> int[E::LN]) : Less(E, 0)
       listOfNegElems(R -> LN)
  rule listOfNegElems(int[E::R]  -> LN)         : GreaterOrEqual(E, 0)
       listOfNegElems(R -> LN)

// The listPos contains all positive and listNeg all negative
// elements of list.
proc   listsOfPosNegElems(list:int[] -> listPos:int[], listNeg:int[])
  rule listsOfPosNegElems(int[]      -> int[], int[])
  rule listsOfPosNegElems(int[E::R]  -> int[E::LP], LN) : Greater(E, 0)
       listsOfPosNegElems(R -> LP, LN)
  rule listsOfPosNegElems(int[E::R]  -> LP, int[E::LN]) : Less   (E, 0)
       listsOfPosNegElems(R -> LP, LN)
  rule listsOfPosNegElems(int[E::R]  -> LP, LN)         : Equal  (E, 0)
       listsOfPosNegElems(R -> LP, LN)

// The listEven contains all even elements of list.
proc   listOfEvenElems(list:int[] -> listEven:int[])
  rule listOfEvenElems(int[]      -> int[])
  rule listOfEvenElems(int[E::R]  -> int[E::LE]) : isEven(E)
       listOfEvenElems(R -> LE)
  rule listOfEvenElems(int[E::R]  -> LE)         : isOdd(E)
       listOfEvenElems(R -> LE)

// Computes the number of pairs of equal neighbors in list.
// Such pairs must not overlag:
// int[5, 5, 5]    contains 1 pair  of equal neighbors (and a single 5)
// int[5, 5, 5, 5] contains 2 pairs of equal neighbors
// int[5, 4, 5, 4] contains 0 pairs of equal neighbors
proc   nrOfEqualNeighbors(list:int[]         -> pairs:int)
  rule nrOfEqualNeighbors(int[]              -> 0)
  rule nrOfEqualNeighbors(int[E::int[E2::R]] -> P+1) :
       nrOfEqualNeighbors(R -> P) Equal(E, E2)
  rule nrOfEqualNeighbors(int[E::R]          -> P) :
       nrOfEqualNeighbors(R -> P)

// Succeeds iff the list contains the elem.
condition containsElem(list:int[], elem:int)
  rule    containsElem(int[E::R], Elem) : Equal(E, Elem)
  rule    containsElem(int[E::R], Elem) : containsElem(R, Elem)

// Succeeds iff the list1 contains list2, i.e.
// iff each element of list2 is contained (at least once) in list1.
// Note: In the presence of double elements, a shorter list may
// contain a longer list (e.g. int[1, 2] contains int[2, 1, 2])
condition containsList(list1:int[], list2:int[])
  rule    containsList(  int[E::R],   int[])
  rule    containsList(L~int[E1::R1], int[E2::R2]) :
          containsElem(L, E2)
          containsList(L, R2)

// Succeeds iff list contains at least two elements which are equal.
condition containsEqualElems(list:int[])
  rule    containsEqualElems(int[E::R]) : containsElem(R, E)
  rule    containsEqualElems(int[E::R]) : containsEqualElems(R)

// Succeeds iff
// each element in list1 is also in list2 and
// each element in list2 is also in list1.
// In the presence of double elements this predicate may succeed even
// if list1 and list2 are of different lengths
// (e.g. containEqualElems(int[1, 2, 2], int[2, 1]) succeeds).
condition containEqualElems(list1:int[], list2:int[])
  rule    containEqualElems(L1, L2) :
          containsList(L1, L2)
          containsList(L2, L1)

// Succeeds iff list is sorted in ascending order.
condition isSortedAscending(list:int[])
  rule    isSortedAscending(int[])
  rule    isSortedAscending(int[E::int[]])
  rule    isSortedAscending(int[E1::int[E2::R]]) : LessOrEqual(E1, E2)
          isSortedAscending(int[E2::R])

// Succeeds iff list is sorted in descending order.
condition isSortedDescending(list:int[])
  rule    isSortedDescending(int[])
  rule    isSortedDescending(int[E::int[]])
  rule    isSortedDescending(int[E1::int[E2::R]]) : GreaterOrEqual(E1, E2)
          isSortedDescending(int[E2::R])

condition mod(int, int -> int)
  rule    mod(  N,   M -> N - N/M*M)
// -------------------------------------------------------------------- 26
proc firstElem(listIn:int[] -> listOut:int[])
   // If listIn is empty, listOut will also be empty.
   // Otherwise listOut will contain (only) the first element of listIn.

   rule firstElem(int[] -> int[999]):
// -------------------------------------------------------------------- 27
proc butFirstElem(listIn:int[] -> listOut:int[])
   // If listIn is empty, listOut will also be empty.
   // Otherwise listOut will contain all elements of listIn except
   // the first one.

   rule butFirstElem(int[] -> int[999]):
// -------------------------------------------------------------------- 28
proc lastElem(listIn:int[] -> listOut:int[])
   // If listIn is empty, listOut will also be empty.
   // Otherwise listOut will contain (only) the last element of listIn.

   rule lastElem(int[] -> int[999]):
// -------------------------------------------------------------------- 29
proc butLastElem(listIn:int[] -> listOut:int[])
   // If listIn is empty, listOut will also be empty.
   // Otherwise listOut will contain all elements of listIn except
   // the last one.

   rule butLastElem(int[] -> int[999]):
// -------------------------------------------------------------------- 30
proc reverse(listIn:int[] -> listOut:int[])
   // listOut will contain the same elements as listIn, but
   // in reverse order.

   rule reverse(int[] -> int[999]):
// ************************************************************************
// Do not change the code below this line:

proc Get-NrOfTests   (-> int)
proc Get-NrOfFailures(-> int)

proc init()
   Set-NrOfTests   (0)
   Set-NrOfFailures(0)

proc incTests()
   rule incTests():
      Get-NrOfTests(->NR)
      Set-NrOfTests(NR+1)

proc incFailures()
   rule incFailures():
      Get-NrOfFailures(->NR)
      Set-NrOfFailures(NR+1)
// ------------------------------------------------------------------------
// Parameters of tst-predicates:
// IN1,  IN2,  ...   Input parameters of the put (predicate under test)
// EXP1, EXP2, ...   Expected values of output parameters of the put
// FND1, FND2, ...   Values found    of output parameters of the put
// ExpectedBehavior: Either "succ" (succeed) oder "fail"

proc tst_length(in1:int[], exp1:int)
   rule tst_length(IN1, EXP1):
      length(IN1 -> FND1)
      tstL_I("length", IN1, EXP1, FND1)

proc tst_sum(in1:int[], exp1:int)
   rule tst_sum(IN1, EXP1):
      sum(IN1 -> FND1)
      tstL_I("sum", IN1, EXP1, FND1)

proc tst_nrOfPosElems(in1:int[], exp1:int)
   rule tst_nrOfPosElems(IN1, EXP1):
      nrOfPosElems(IN1 -> FND1)
      tstL_I("nrOfPosElems", IN1, EXP1, FND1)

proc tst_nrOfNegElems(in1:int[], exp1:int)
   rule tst_nrOfNegElems(IN1, EXP1):
      nrOfNegElems(IN1 -> FND1)
      tstL_I("nrOfNegElems", IN1, EXP1, FND1)

proc tst_sumOfPosElems(in1:int[], exp1:int)
   rule tst_sumOfPosElems(IN1, EXP1):
      sumOfPosElems(IN1 -> FND1)
      tstL_I("sumOfPosElems", IN1, EXP1, FND1)

proc tst_sumOfNegElems(in1:int[], exp1:int)
   rule tst_sumOfNegElems(IN1, EXP1):
      sumOfNegElems(IN1 -> FND1)
      tstL_I("SumOfNegElems", IN1, EXP1, FND1)

proc tst_maxPosElem(in1:int[], exp1:int)
   rule tst_maxPosElem(IN1, EXP1):
      maxPosElem(IN1 -> FND1)
      tstL_I("maxPosElem", IN1, EXP1, FND1)

proc tst_minNegElem(in1:int[], exp1:int)
   rule tst_minNegElem(IN1, EXP1):
      minNegElem(IN1 -> FND1)
      tstL_I("minNegElem", IN1, EXP1, FND1)

proc tst_isEven(in1:int, expectedBehavior:string)
   rule tst_isEven(IN1, "succ"):
      incTests()
      { isEven(IN1) | ermI("isEven failed",    IN1) }
   rule tst_isEven(IN1, "fail")
      incTests()
      { isEven(IN1)   ermI("isEven succeeded", IN1) }?

proc tst_isOdd(in1:int, expectedBehavior:string)
   rule tst_isOdd(IN1, "succ"):
      incTests()
      { isOdd(IN1)  | ermI("isOdd failed",     IN1) }
   rule tst_isOdd(IN1, "fail")
      incTests()
      { isOdd(IN1)    ermI("isOdd succeeded",  IN1) }?

proc tst_nrOfEvenElems(in1:int[], exp1:int)
   rule tst_nrOfEvenElems(IN1, EXP1):
      nrOfEvenElems(IN1 -> FND1)
      tstL_I("nrOfEvenElems", IN1, EXP1, FND1)

proc tst_nrOfOddElems(in1:int[], exp1:int)
   rule tst_nrOfOddElems(IN1, EXP1):
      nrOfOddElems(IN1 -> FND1)
      tstL_I("nrOfOddElems", IN1, EXP1, FND1)

proc tst_nrsOfPosNegElems(in1:int[], exp1:int, exp2:int)
   rule tst_nrsOfPosNegElems(IN1, EXP1, EXP2):
      nrsOfPosNegElems(IN1 -> FND1, FND2)
      tstL_II("nrsOfPosNegElems", IN1, EXP1, EXP2, FND1, FND2)

proc tst_nrsOfNegEvenElems(in1:int[], exp1:int, exp2:int)
   rule tst_nrsOfNegEvenElems(IN1, EXP1, EXP2):
      nrsOfNegEvenElems(IN1 -> FND1, FND2)
      tstL_II("nrsOfNegEvenElems", IN1, EXP1, EXP2, FND1, FND2)

proc tst_listOfPosElems(in1:int[], exp1:int[])
   rule tst_listOfPosElems(IN1, EXP1):
      listOfPosElems(IN1 -> FND1)
      tstL_L("listOfPosElems", IN1, EXP1, FND1)

proc tst_listOfNegElems(in1:int[], exp1:int[])
   rule tst_listOfNegElems(IN1, EXP1):
      listOfNegElems(IN1 -> FND1)
      tstL_L("listOfNegElems", IN1, EXP1, FND1)

proc tst_listsOfPosNegElems(in1:int[], exp1:int[], exp2:int[])
   rule tst_listsOfPosNegElems(IN1, EXP1, EXP2):
      listsOfPosNegElems(IN1 -> FND1, FND2)
      tstL_LL("listsOfPosNegElems", IN1, EXP1, EXP2, FND1, FND2)

proc tst_listOfEvenElems(in1:int[], exp1:int[])
   rule tst_listOfEvenElems(IN1, EXP1):
      listOfEvenElems(IN1 -> FND1)
      tstL_L("listOfEvenElems", IN1, EXP1, FND1)

proc tst_nrOfEqualNeighbors(in1:int[], exp1:int)
   rule tst_nrOfEqualNeighbors(IN1, EXP1):
      nrOfEqualNeighbors(IN1 -> FND1)
      tstL_I("nrOfEqualNeighbors", IN1, EXP1, FND1)

proc tst_containsElem(in1:int[], in2:int, expectedBehavior:string)
   rule tst_containsElem(IN1, IN2, "succ"):
      incTests()
      { containsElem(IN1, IN2) | ermLI("containsElem failed",    IN1, IN2) }
   rule tst_containsElem(IN1, IN2, "fail")
      incTests()
      { containsElem(IN1, IN2)   ermLI("containsElem succeeded", IN1, IN2) }?

proc tst_containsList(in1:int[], in2:int[], expectedBehavior:string)
   rule tst_containsList(IN1, IN2, "succ"):
      incTests()
      { containsList(IN1, IN2) | ermLL("containsList failed",    IN1, IN2) }
   rule tst_containsList(IN1, IN2, "fail")
      incTests()
      { containsList(IN1, IN2)   ermLL("containsList succeeded", IN1, IN2) }?

proc tst_containsEqualElems(in1:int[], expectedBehavior:string)
   rule tst_containsEqualElems(IN1, "succ"):
      incTests()
      { containsEqualElems(IN1) | ermL("containsEqualElems failed",    IN1) }
   rule tst_containsEqualElems(IN1, "fail")
      incTests()
      { containsEqualElems(IN1)   ermL("containsEqualElems succeeded", IN1) }?

proc tst_containEqualElems(in1:int[], in2:int[], expectedBehavior:string)
   rule tst_containEqualElems(IN1, IN2, "succ"):
      incTests()
      { containEqualElems(IN1, IN2) | ermLL("containEqualElems failed",    IN1, IN2) }
   rule tst_containEqualElems(IN1, IN2, "fail")
      incTests()
      { containEqualElems(IN1, IN2)   ermLL("containEqualElems succeeded", IN1, IN2) }?

proc tst_isSortedAscending(in1:int[], expectedBehavior:string)
   rule tst_isSortedAscending(IN1, "succ"):
      incTests()
      { isSortedAscending(IN1) | ermL("isSortedAscending failed",    IN1) }
   rule tst_isSortedAscending(IN1, "fail")
      incTests()
      { isSortedAscending(IN1)   ermL("isSortedAscending succeeded", IN1) }?

proc tst_isSortedDescending(in1:int[], expectedBehavior:string)
   rule tst_isSortedDescending(IN1, "succ"):
      incTests()
      { isSortedDescending(IN1) | ermL("isSortedDescending failed",    IN1) }
   rule tst_isSortedDescending(IN1, "fail")
      incTests()
      { isSortedDescending(IN1)   ermL("isSortedDescending succeeded", IN1) }?
// -----------------------------------------------------------------------
// Predicates called by tst-predicates testing procedures
// In the following L means "type int[]" and I means "type int"
//
// L_I  : 1 input param of type L, 1 output param of type I
// L_II : 1 input param of type L, 2 output param of type I
// L_L  : 1 input param of type L, 1 output param of type L
// L_LL : 1 input param of type L, 2 output param of type L


proc tstL_I(pred:string, in1:int[], exp1:int, fnd1:int)
   rule tstL_I(PRED, IN1, EXP1, FND1):
      incTests()
      {
         Equal(EXP1, FND1)
      |
         incFailures()
         "---------------------------------------------\n"
         "Failure in predicate " $PRED "\n\n"
         "IN1 : " output(IN1)
         "EXP1: " $EXP1 "\n"
         "FND1: " $FND1 "\n"
      }
// -----------------------------------------------------------------------
proc tstL_II(pred:string, in1:int[], exp1:int, exp2:int, fnd1:int, fnd2:int)
   rule tstL_II(PRED, IN1, EXP1, EXP2, FND1, FND2):
      incTests()
      {
         Equal(EXP1, FND1)
         Equal(EXP2, FND2)
      |
         incFailures()
         "---------------------------------------------\n"
         "Failure in predicate " $PRED "\n\n"
         "IN1 : " output(IN1)
         "EXP1: " $EXP1 "\n"
         "FND1: " $FND1 "\n"
         "EXP2: " $EXP2 "\n"
         "FND2: " $FND2 "\n"
      }
// -----------------------------------------------------------------------
proc tstL_L(pred:string, int1:int[], exp1:int[], fnd1:int[])
   rule tstL_L(PRED, IN1, EXP1, FND1):
      incTests()
      {
         check(EXP1, FND1)
      |
         incFailures()
         "---------------------------------------------\n"
         "Failure in predicate " $PRED "\n\n"
         "IN1 : " output(IN1)
         "EXP1: " output(EXP1)
         "FND1: " output(FND1)
      }
// -----------------------------------------------------------------------
proc tstL_LL(pred:string, in1:int[], exp1:int[], exp2:int[], fnd1:int[], fnd2:int[])
   rule tstL_LL(PRED, IN1, EXP1, EXP2, FND1, FND2):
      incTests()
      {
         check(EXP1, FND1)
         check(EXP2, FND2)
      |
         incFailures()
         "---------------------------------------------\n"
         "Failure in predicate " $PRED "\n\n"
         "IN1 : " output(IN1)
         "EXP1: " output(EXP1)
         "FND1: " output(FND1)
         "EXP2: " output(EXP2)
         "FND2: " output(FND2)
      }
// -----------------------------------------------------------------------
// Predicates called by tst-predicates testing conditions
// In the following L means "type int[]" and I means "type int"
//
// I: 1 input parameter of type int   (no output parameters)
// L: 1 input parameter of type int[] (no output parameters)

proc ermI(msg:string, in1:int)
   rule ermI(MSG, IN1):
      incFailures()
      "---------------------------------------------\n"
      "Unexpected behavior of a condition predicate:\n\n"
      "MSG: " $MSG "\n"
      "IN1: " $IN1 "\n"
// -----------------------------------------------------------------------
proc ermL(msg:string, in1:int[])
   rule ermL(MSG, IN1):
      incFailures()
      "---------------------------------------------\n"
      "Unexpected behavior of a condition predicate:\n\n"
      "MSG: " $MSG "\n"
      "IN1: " output(IN1)

// -----------------------------------------------------------------------
proc ermLI(msg:string, in1:int[], in2:int)
   rule ermLI(MSG, IN1, IN2):
      incFailures()
      "---------------------------------------------\n"
      "Unexpected behavior of a condition predicate:\n\n"
      "MSG: " $MSG "\n"
      "IN1: " output(IN1)
      "IN2: " $IN2 "\n"
// -----------------------------------------------------------------------
proc ermLL(msg:string, in1:int[], in2:int[])
   rule ermLL(MSG, IN1, IN2):
      incFailures()
      "---------------------------------------------\n"
      "Unexpected behavior of a condition predicate:\n\n"
      "MSG: " $MSG "\n"
      "IN1: " output(IN1)
      "IN2: " output(IN2)
// -----------------------------------------------------------------------
// Other auxiliary predicates:

proc output(list:int[])
   // Outputs the list in a format allowed in a Gentle source program
   // e.g. int[10, 20, 30] (3 elements) or int[] (0 elements)

   rule output(int[]):
      "int[]\n"
   rule output(int[H::T]):
      "int[" $H
      output2(T)
      "]\n"

proc output2(list:int[])
   rule output2(int[]):
   rule output2(int[H::T]):
      ", " $H
      output2(T)
// -----------------------------------------------------------------------
condition check(int[], int[])
   rule check(int[], int[]):
   rule check(int[H1::T1], int[H2::T2]):
      Equal(H1, H2)
      check(T1, T2)
// -----------------------------------------------------------------------
