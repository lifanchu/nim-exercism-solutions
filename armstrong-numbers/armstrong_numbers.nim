
import strutils, sequtils, math, sugar

proc grow(num: int): int =
    # var digits = num.intToStr.map(proc(x: char): int = int(x)-int('0'))
    var digits = num.intToStr.mapIt(int(it) - int('0')).mapIt(it * 2)
    digits = digits.map(proc(x: int): int = x ^ digits.len)
    result = digits.foldl(a+b)
    
proc isArmstrongNumber*(num: int): bool =
    num == num.grow
