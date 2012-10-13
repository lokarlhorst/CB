// Computes the length of list.
proc   length(list:int[] -> length:int)
  rule length(int[]      -> 0)
  rule length(int[e::r]  -> rLength + 1) : length(r -> rLength)

// Computes the sum of the elements of list.
proc   sum(list:int[] -> sum:int)
  rule sum(int[]      -> 0)
  rule sum(int[e::r]  -> e + rSum) : sum(r -> rSum)

// Computes the number of positive elements in list.
// Remember: 0 is not positive.
proc   nrOfPosElems(list:int[] -> nr:int)
  rule nrOfPosElems(int[]      -> 0)
  rule nrOfPosElems(int[e::r]  -> nRest+1) : Greater(e, 0)
       nrOfPosElems(r -> nRest)
  rule nrOfPosElems(int[e::r]  -> nRest  ) : LessOrEqual(e, 0)
       nrOfPosElems(r -> nRest)

// Computes the number of negative elements in list.
// Remember: 0 is not negative.
proc   nrOfNegElems(list:int[] -> nr:int)
  rule nrOfNegElems(int[]      -> 0)
  rule nrOfNegElems(int[e::r]  -> nRest+1) : Less(e, 0)
       nrOfNegElems(r -> nRest)
  rule nrOfNegElems(int[e::r]  -> nRest  ) : GreaterOrEqual(e, 0)
       nrOfNegElems(r -> nRest)

// Computes the sum of all positive numbers in list.
proc   sumOfPosElems(list:int[] -> sum:int)
  rule sumOfPosElems(int[]      -> 0)
  rule sumOfPosElems(int[e::r]  -> e + restSum) : Greater(e, 0)
       sumOfPosElems(r -> restSum)
  rule sumOfPosElems(int[e::r]  -> restSum)     : LessOrEqual(e, 0)
       sumOfPosElems(r -> restSum)

// Computes the sum of all negative numbers in list.
proc   sumOfNegElems(list:int[] -> sum:int)
  rule sumOfNegElems(int[]      -> 0)
  rule sumOfNegElems(int[e::r]  -> e + restSum) : Less(e, 0)
                                                  sumOfNegElems(r -> restSum)
  rule sumOfNegElems(int[e::r]  -> restSum)     : GreaterOrEqual(e, 0)
                                                  sumOfNegElems(r -> restSum)

// Computes the largest positive element (max) in list
// (and 0 if list does not contain positive numbers).
proc   maxPosElem(list:int[] -> max:int)
  rule maxPosElem(int[]      -> 0)
  rule maxPosElem(int[e::r]  -> e)  : maxPosElem(r -> e2) GreaterOrEqual(e, e2)
  rule maxPosElem(int[e::r]  -> e2) : maxPosElem(r -> e2) Greater(e2, e)
  rule maxPosElem(int[e::r]  -> 0)  : LessOrEqual(e, 0)

// Computes the smallest negative element (min) in list
// (and 0 if list does not contain negative numbers).
proc   minNegElem(list:int[] -> min:int)
  rule minNegElem(int[]      -> 0)
  rule minNegElem(int[e::r]  -> e)  : minNegElem(r -> e2) LessOrEqual(e, e2)
  rule minNegElem(int[e::r]  -> e2) : minNegElem(r -> e2) Less(e2, e)
  rule minNegElem(int[e::r]  -> 0)  : GreaterOrEqual(e, 0)

// Succeeds iff number is even.
condition isEven(number:int)
  rule    isEven(n) : Equal(n - n/2*2, 0)

// Succeeds iff number is odd.
condition isOdd(number:int)
  rule    isOdd(n) : mod(n, 2 -> rest) Unequal(rest, 0)

// Computes the number of even elements (nrEven) in list.
proc   nrOfEvenElems(list:int[] -> nrEven:int)
  rule nrOfEvenElems(int[]      -> 0)
  rule nrOfEvenElems(int[e::r]  -> nEven+1) : isEven(e)
       nrOfEvenElems(r -> nEven)
  rule nrOfEvenElems(int[e::r]  -> nEven)   : isOdd(e)
       nrOfEvenElems(r -> nEven)

// Computes the number of odd elements (nrOdd) in list.
proc   nrOfOddElems(list:int[] -> nrOdd:int)
  rule nrOfOddElems(int[]      -> 0)
  rule nrOfOddElems(int[e::r]  -> nOdd+1) : isOdd (e)
       nrOfOddElems(r -> nOdd)
  rule nrOfOddElems(int[e::r]  -> nOdd)   : isEven(e)
       nrOfOddElems(r -> nOdd)

// Computes the number of positive elements (nrPos)
// and      the number of negative elements (nrNeg) in list.
proc   nrsOfPosNegElems(list:int[] -> nrPos:int, nrNeg:int)
  rule nrsOfPosNegElems(int[]      -> 0, 0)
  rule nrsOfPosNegElems(int[e::r]  -> nPos + 1, nNeg) : Greater(e, 0)
       nrsOfPosNegElems(r -> nPos, nNeg)
  rule nrsOfPosNegElems(int[e::r]  -> nPos, nNeg + 1) : Less   (e, 0)
       nrsOfPosNegElems(r -> nPos, nNeg)
  rule nrsOfPosNegElems(int[e::r]  -> nPos, nNeg)     : Equal  (e, 0)
       nrsOfPosNegElems(r -> nPos, nNeg)

// Computes the number of positive elements (nrPos)
// and      the number of even     elements (nrEven) in list.
proc   nrsOfPosEvenElems(list:int[] -> nrPos:int, nrEven:int)
  rule nrsOfPosEvenElems(int[]      -> 0, 0)
  rule nrsOfPosEvenElems(int[e::r]  -> nPos+1, nEven+1) :
       nrsOfPosEvenElems(r -> nPos, nEven) Greater(e, 0) isEven(e)
  rule nrsOfPosEvenElems(int[e::r]  -> nPos+1, nEven  ) :
       nrsOfPosEvenElems(r -> nPos, nEven) Greater(e, 0)
  rule nrsOfPosEvenElems(int[e::r]  -> nPos  , nEven+1) :
       nrsOfPosEvenElems(r -> nPos, nEven) isEven(e)
  rule nrsOfPosEvenElems(int[e::r]  -> nPos  , nEven  ) :
       nrsOfPosEvenElems(r -> nPos, nEven)

// Computes the number of negative elements (nrNeg)
// and      the number of even     elements (nrEven) in list.
proc   nrsOfNegEvenElems(list:int[] -> nrNeg:int, nrEven:int)
  rule nrsOfNegEvenElems(int[]      -> 0, 0)
  rule nrsOfNegEvenElems(int[e::r]  -> nNeg+1, nEven+1) :
       nrsOfNegEvenElems(r -> nNeg, nEven) Less(e, 0) isEven(e)
  rule nrsOfNegEvenElems(int[e::r]  -> nNeg+1, nEven  ) :
       nrsOfNegEvenElems(r -> nNeg, nEven) Less(e, 0)
  rule nrsOfNegEvenElems(int[e::r]  -> nNeg  , nEven+1) :
       nrsOfNegEvenElems(r -> nNeg, nEven) isEven(e)
  rule nrsOfNegEvenElems(int[e::r]  -> nNeg  , nEven  ) :
       nrsOfNegEvenElems(r -> nNeg, nEven)

// The listPos contains all positive elements of list.
// Remember: 0 is not positive.
proc   listOfPosElems(list:int[] -> listPos:int[])
  rule listOfPosElems(int[]      -> int[])
  rule listOfPosElems(int[e::r]  -> int[e::lPos]) : Greater(e, 0)
       listOfPosElems(r -> lPos)
  rule listOfPosElems(int[e::r]  -> lPos)         : LessOrEqual(e, 0)
       listOfPosElems(r -> lPos)

// The listPos contains all negative elements of list.
// Remember: 0 is not negative.
proc   listOfNegElems(list:int[] -> listNeg:int[])
  rule listOfNegElems(int[]      -> int[])
  rule listOfNegElems(int[e::r]  -> int[e::lNeg]) : Less(e, 0)
       listOfNegElems(r -> lNeg)
  rule listOfNegElems(int[e::r]  -> lNeg)         : GreaterOrEqual(e, 0)
       listOfNegElems(r -> lNeg)

// The listPos contains all positive and listNeg all negative
// elements of list.
proc   listsOfPosNegElems(list:int[] -> listPos:int[], listNeg:int[])
  rule listsOfPosNegElems(int[]      -> int[], int[])
  rule listsOfPosNegElems(int[e::r]  -> int[e::lPos], lNeg) : Greater(e, 0)
       listsOfPosNegElems(r -> lPos, lNeg)
  rule listsOfPosNegElems(int[e::r]  -> lPos, int[e::lNeg]) : Less   (e, 0)
       listsOfPosNegElems(r -> lPos, lNeg)
  rule listsOfPosNegElems(int[e::r]  -> lPos, lNeg)         : Equal  (e, 0)
       listsOfPosNegElems(r -> lPos, lNeg)

// The listEven contains all even elements of list.
proc   listOfEvenElems(list:int[] -> listEven:int[])
  rule listOfEvenElems(int[]      -> int[])
  rule listOfEvenElems(int[e::r]  -> int[e::rest]) : isEven(e)
       listOfEvenElems(r -> rest)
  rule listOfEvenElems(int[e::r]  -> rest)         : isOdd(e)
       listOfEvenElems(r -> rest)

// Computes the number of pairs of equal neighbors in list.
// Such pairs must not overlag:
// int[5, 5, 5]    contains 1 pair  of equal neighbors (and a single 5)
// int[5, 5, 5, 5] contains 2 pairs of equal neighbors
// int[5, 4, 5, 4] contains 0 pairs of equal neighbors
proc   nrOfEqualNeighbors(list:int[]         -> pairs:int)
  rule nrOfEqualNeighbors(int[]              -> 0)
  rule nrOfEqualNeighbors(int[e::int[e2::r]] -> p+1) :
       nrOfEqualNeighbors(r -> p) Equal(e, e2)
  rule nrOfEqualNeighbors(int[e::r]          -> p) :
       nrOfEqualNeighbors(r -> p)

// Succeeds iff the list contains the elem.
condition containsElem(list:int[], elem:int)
  rule    containsElem(int[e::r], elem) : Equal(e, elem)

// Succeeds iff the list1 contains list2, i.e.
// iff each element of list2 is contained (at least once) in list1.
// Note: In the presence of double elements, a shorter list may
// contain a longer list (e.g. int[1, 2] contains int[2, 1, 2])
condition containsList(list1:int[], list2:int[])
  rule    containsList(int[], int[])

// Succeeds iff list contains at least two elements which are equal.
condition containsEqualElems(list:int[])
  rule    containsEqualElems(int[])

// Succeeds iff
// each element in list1 is also in list2 and
// each element in list2 is also in list1.
// In the presence of double elements this predicate may succeed even
// if list 1 and list2 are of different lengths
// (e.g. containEqualElems(int[1, 2, 2], int[2, 1]) succeeds).
condition containEqualElems(list1:int[], list2:int[])
  rule    containEqualElems(int[], int[])

// Succeeds iff list is sorted in ascending order.
condition isSortedAscending(list:int[])
  rule    isSortedAscending(int[])

// Succeeds iff list is sorted in descending order.
condition isSortedDescending(list:int[])
  rule    isSortedDescending(int[])

////////////////////////////////////////////////////////////////////////////////

condition mod(int, int -> int)
  rule    mod(  n,   m -> n - n/m*m)

////////////////////////////////////////////////////////////////////////////////

root
  list1 <- int[-3, -3, -2, -1, 0, 1, 2, 3, 3]
  list2 <- int[-5, -7, -6]
  list3 <- int[8, 10, 9, 11]
  list4 <- int[5, 5, 5]

  length            (list1 -> length)             // 9
  sum               (list1 -> sum)                // 0
  nrOfPosElems      (list1 -> nPos)               // 4
  nrOfNegElems      (list1 -> nNeg)               // 4
  sumOfPosElems     (list1 -> sumPos)             // 9
  sumOfNegElems     (list1 -> sumNeg)             // -9
  maxPosElem        (list1 -> maxNum)             // 3
  minNegElem        (list1 -> minNum)             // -3
  nrOfEvenElems     (list1 -> nEven)              // 3
  nrOfOddElems      (list1 -> nOdd)               // 6
  nrsOfPosNegElems  (list1 -> nPos2, nNeg2)       // 4, 4
  listOfPosElems    (list1 -> listPos)            // int[1, 2, 3, 3]
  listOfNegElems    (list1 -> listNeg)            // int[-3, -3, -2, -1]
  listsOfPosNegElems(list1 -> listPos2, listNeg2) // int[1, 2, 3, 3],
                                                  // int[-3, -3, -2, -1]
  nrsOfPosEvenElems (list1 -> nPos3, nEven2)      // 4, 3
  nrsOfNegEvenElems (list2 -> nNeg3, nEven3)      // 3, 1
  listOfEvenElems   (list1 -> listEven)           // int[-2, 0, 2]
  nrOfEqualNeighbors(list1 -> pairs)              // 2

  print length
  print sum
  print nPos
  print nNeg
  print sumPos
  print sumNeg
  print maxNum
  print minNum
  print nEven
  print nOdd
  print nPos2
  print nNeg2
  print listPos
  print listNeg
  print listPos2
  print listNeg2
  print nPos3
  print nEven2
  print nNeg3
  print nEven3
  print listEven
  print pairs
  print "predicates executed"
