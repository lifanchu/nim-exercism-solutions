type
  Number* = enum
    Perfect, Abundant, Deficient

proc aliquotSum(n: int): int =
  if n == 1:
    return 0 #kinda cheating
  for i in 1..n-1:
    if n mod i == 0:
      result += i

proc classify*(num: int): Number =
  if num <= 0:
    raise newException(ValueError, "Invalid number")
  let aliquot = num.aliquotSum
  if aliquot == num:
    result = Perfect
  elif aliquot > num:
    result = Abundant
  else:
    result = Deficient
    
  