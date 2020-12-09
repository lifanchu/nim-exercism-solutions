proc spiral*(size: static int): array[size, array[size, int]] =
  type
    Dir = enum
      Right, Down, Left, Up
  var
    top, left = 0
    bottom, right = size - 1
    count = 1
    dir = Right
  
  while (top <= bottom) and (left <= right):
    case dir:
      of Right:
        for i in left..right:
          result[top][i] = count
          count.inc
        top.inc 
        dir = Down 
        
      of Down:
        for i in top..bottom:
          result[i][right] = count
          count.inc
        right.dec
        dir = Left
      
      of Left:
        for i in countdown(right, left):
          result[bottom][i] = count
          count.inc
        bottom.dec
        dir = Up
      
      of Up:
        for i in countdown(bottom, top):
          result[i][left] = count
          count.inc
        left.inc
        dir = Right
      
      else:
        discard
