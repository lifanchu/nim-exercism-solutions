
import strutils, sequtils, math

proc grow(num: int): int =
    var digits = num.intToStr.map(proc(x: char): int = int(x)-int('0'))
    digits = digits.map(proc(x: int): int = x ^ digits.len )
    result = digits.foldl(a+b)
    
proc isArmstrongNumber*(num: int): bool =
    num == num.grow
