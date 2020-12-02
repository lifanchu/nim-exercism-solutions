import strutils

proc processString(s: string): seq[int] =
    result = newSeqOfCap[int](s.len)
    if s.len == 0:
        return result
    for c in s:
        if c.isDigit:
            result.add(int(c) - int('0'))
    if s[^1] == 'X':
        result.add(10)

proc isbnCheck(digs: seq[int]): bool =
    if digs.len != 10:
        return false
    var cumsum = 0
    for i in 1..10:
        cumsum += digs[i-1] * i
    cumsum mod 11 == 0

proc isValid*(isbn: string): bool = 
    isbn.processString.isbnCheck


