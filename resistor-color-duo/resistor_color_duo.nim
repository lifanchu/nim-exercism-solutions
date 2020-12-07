type 
  Resistor* = enum
    Black, Brown, Red, Orange, Yellow, 
    Green, Blue, Violet, Grey, White

proc value*(colors: openArray[Resistor]): int =
  (ord(colors[0]) * 10) + ord(colors[1])
