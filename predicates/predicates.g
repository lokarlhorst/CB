root
  L1 <- int[-3, -3, -2, -1, 0, 1, 2, 3, 3]
  L2 <- int[-5, -7, -6]

  p_all(L1, "L1")
  p_all(L2, "L2")
  "---------------------------------------------------------------------\n"
  p_CEE("L1", "L2", L1, L2)

////////////////////////////////////////////////////////////////////////////////

// Needed to make Gentle and Gecco work together
phrase startPhrase
  rule startPhrase

// The rules to be implemented in this exercise ////////////////////////////////

// Computes the length of list.
proc   length(list:int[] -> length:int)
  rule length(int[]      -> 0)
  rule length(int[E::R]  -> LENGTH+1) : length(R -> LENGTH)

// Computes the sum of the elements of list.
proc   sum(list:int[] -> sum:int)
  rule sum(int[]      -> 0)
  rule sum(int[E::R]  -> E + SUM) : sum(R -> SUM)

// Computes the number of positive elements in list.
// Remember: 0 is not positive.
proc   nrOfPosElems(list:int[] -> nr:int)
  rule nrOfPosElems(int[]      -> 0)
  rule nrOfPosElems(int[E::R]  -> N+1) : Greater(E, 0)
       nrOfPosElems(R -> N)
  rule nrOfPosElems(int[E::R]  -> N  ) : LessOrEqual(E, 0)
       nrOfPosElems(R -> N)

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

// Self defined rules //////////////////////////////////////////////////////////

condition mod(int, int -> int)
  rule    mod(  N,   M -> N - N/M*M)

// Print helpers ///////////////////////////////////////////////////////////////

// Prints a list of int values in one line
proc   p_intList(int[])
  rule p_intList(int[])     : "{}"
  rule p_intList(int[E::R]) : "{ " $E p_intL2(R) " }"

// Subproc of p_intList
proc   p_intL2(int[])
  rule p_intL2(int[])
  rule p_intL2(int[E::R]) : ", " $E p_intL2(R)

// Print proc for condition containsEqualElems
proc   p_CsEE(list:int[] -> result:string)
  rule p_CsEE(L -> "true" ) : containsEqualElems(L)
  rule p_CsEE(L -> "false")

// Print proc for condition containEqualElems
proc   p_CEE(name1:string, name2:string, list1:int[], list2:int[])
  rule p_CEE(N1, N2, L1, L2) : containEqualElems(L1, L2)
       $N1 " and " $N2 " are equal!\n"
  rule p_CEE(N1, N2, L1, L2) :
       $N1 " and " $N2 " are not equal!\n"

// Print proc for condition isSortedAscending
proc   p_SA(list:int[] -> result:string)
  rule p_SA(L -> "true" ) : isSortedAscending(L)
  rule p_SA(L -> "false")

// Print proc for condition isSortedDescending
proc   p_SD(list:int[] -> result:string)
  rule p_SD(L -> "true" ) : isSortedDescending(L)
  rule p_SD(L -> "false")

// Prints examples of all defined procs and conditions
proc   p_all(list:int[], name:string)
  rule p_all(L, NAME) :
       length            (L -> LEN)
       sum               (L -> SUM)
       nrOfPosElems      (L -> N_POS)
       nrOfNegElems      (L -> N_NEG)
       sumOfPosElems     (L -> SUM_POS)
       sumOfNegElems     (L -> SUM_NEG)
       maxPosElem        (L -> MAX_POS)
       minNegElem        (L -> MIN_NEG)
       nrOfEvenElems     (L -> N_EVEN)
       nrOfOddElems      (L -> N_ODD)
       nrsOfPosNegElems  (L -> N_POS2, N_NEG2)
       listOfPosElems    (L -> L_POS)
       listOfNegElems    (L -> L_NEG)
       listsOfPosNegElems(L -> L_POS2, L_NEG2)
       nrsOfPosEvenElems (L -> N_POS3, N_EVEN2)
       nrsOfNegEvenElems (L -> N_NEG3, N_EVEN3)
       listOfEvenElems   (L -> L_EVEN)
       nrOfEqualNeighbors(L -> N_PAIRS)
       p_CsEE            (L -> BOOL1)
       p_SA              (L -> BOOL2)
       p_SD              (L -> BOOL3)

       "---------------------------------------------------------------------\n"
       $NAME "[" $LEN "] = " p_intList(L) "\n"

       "sum                : " $SUM                                     "\n"
       "nrOfPosElems       : " $N_POS                                   "\n"
       "nrOfNegElems       : " $N_NEG                                   "\n"
       "sumOfPosElems      : " $SUM_POS                                 "\n"
       "sumOfNegElems      : " $SUM_NEG                                 "\n"
       "maxPosElem         : " $MAX_POS                                 "\n"
       "minNegElem         : " $MIN_NEG                                 "\n"
       "nrOfEvenElems      : " $N_EVEN                                  "\n"
       "nrOfOddElems       : " $N_ODD                                   "\n"
       "nrsOfPosNegElems   : " $N_POS                                   "\n"
       "listOfPosElems     : " p_intList(L_POS)                         "\n"
       "listOfNegElems     : " p_intList(L_NEG)                         "\n"
       "listsOfPosNegElems : " p_intList(L_POS2) ", " p_intList(L_NEG2) "\n"
       "nrsOfPosEvenElems  : " $N_POS3 ", " $N_EVEN2                    "\n"
       "nrsOfNegEvenElems  : " $N_NEG3 ", " $N_EVEN3                    "\n"
       "listOfEvenElems    : " p_intList(L_EVEN)                        "\n"
       "nrOfEqualNeighbors : " $N_PAIRS                                 "\n"
       "containsEqualElems : " $BOOL1                                   "\n"
       "isSortedAscending  : " $BOOL2                                   "\n"
       "isSortedDescending : " $BOOL3                                   "\n"
