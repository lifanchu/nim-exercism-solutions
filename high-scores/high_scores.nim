import algorithm

proc latest*[T](n: openArray[T]): int =
  n[^1]

proc personalBest*[T](n: openArray[T]): int =
  max(n)

proc personalTopThree*[T](n: openArray[T]): seq[T] =
  let last = min([n.high, 2])
  #var last = [n.high, 2][int(2 < n.high)]
  #var last = if n.high < 2: n.high else 2
  result = sorted(n, SortOrder.Descending)[0..last]

  
