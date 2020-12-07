type 
  Resistor* = enum
    Black, Brown, Red, Orange, Yellow, 
    Green, Blue, Violet, Grey, White

func colorCode*(color: Resistor): int =
  ord(color)

proc colors*(): array[high(Resistor).ord + 1, Resistor]  =
  for r in Resistor.low..Resistor.high:
    result[r.ord] = r
