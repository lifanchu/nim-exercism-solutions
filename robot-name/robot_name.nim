import random

proc generateName: string = 
  result = newString(5)
  for i in 0..result.high:
    if i < 2:
      result[i] = rand('A'..'Z')
    else:
      result[i] = rand('0'..'9')

type 
  Robot* = object
    name*: string
    
proc makeRobot*: Robot =
  result = Robot(name: generateName())
  
proc reset*(r: var Robot) =
  r.name = generateName()
