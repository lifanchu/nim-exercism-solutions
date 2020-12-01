import strutils, sequtils

#forward declaration for laffs
proc purifyString(phrase: string): seq[int]
proc checkDigits(digits: seq[int]): bool 

proc isValid*(phrase: string): bool =
    phrase.purifyString.checkDigits 

proc purifyString(phrase: string): seq[int] =
    #returns empty seq[int] if invalid
    var digits = newSeqofCap[int](phrase.len)
    for i in 0..phrase.high:
        if phrase[i].isSpaceAscii:
            discard
        elif not phrase[i].isDigit:
            return result  #unintuitive
        else:
            digits.add int(phrase[i]) - int('0') #wish there was a convenience function
    return digits

proc checkDigits(digits: seq[int]): bool = 
    proc grow(num: int): int =
        result = num * 2
        if result > 9: result -= 9
    if digits.len < 2:
        return false
    var new_digs = digits
    for i in countdown(new_digs.high - 1, 0, 2):
        new_digs[i] = new_digs[i].grow
    return foldl(new_digs, a + b) mod 10 == 0




    
