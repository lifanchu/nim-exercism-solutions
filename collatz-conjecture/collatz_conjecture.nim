proc steps*(n: int): int =
  var stepCount: int = 0
  result = n
  if result <= 0: 
    raise newException(ValueError, "you are a miserable human being.")
  while result != 1:
    if result mod 2 == 0:
      result = result div 2
    else:
       result = 3 * result + 1
    stepCount += 1
  stepCount
# proc steps*(n:int, step_count:int = 0): int =
#   if n == 1:
#     result = step_count
#   elif n <= 0: 
#     raise newException(ValueError, "you are a miserable human being.")
#   elif n mod 2 == 0:
#     result = steps(n div 2, step_count + 1)
#   else:
#     result = steps(3 * n + 1, step_count + 1)

