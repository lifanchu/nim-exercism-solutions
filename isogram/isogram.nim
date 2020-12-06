import sets, strutils

proc isIsogram*(phrase: string): bool =
    var inspected: set[char]
    for c in phrase:
        if c.isAlphaAscii:
            let cs = c.toLowerAscii
            if inspected.contains(cs):
                return false
            else:
                inspected.incl(cs)
    return true
