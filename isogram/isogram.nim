import tables, strutils

proc isIsogram*(phrase: string): bool =
    var inspected = initTable[char, int]()
    for c in phrase:
        if c.isAlphaAscii:
            let cs = c.toLowerAscii
            if inspected.hasKey(cs):
                return false
            else:
                inspected[cs] = 0
    return true

#slower
# proc isIsogram*(phrase: string): bool =
#     let counts = phrase.toLowerAscii.toCountTable
#     for character, count in counts:
#         if character.isAlphaAscii and count > 1:
#             return false
#     return true

echo isIsogram("word")