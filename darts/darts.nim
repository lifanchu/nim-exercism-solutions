import math

type 
  Coordinate = tuple[x: float, y: float]

proc score*(coords: Coordinate): int =
  var dist = hypot(coords.x, coords.y)
  if dist > 10:
    0 
  elif dist > 5:
    1 
  elif dist > 1:
    5 
  else:
    10 
