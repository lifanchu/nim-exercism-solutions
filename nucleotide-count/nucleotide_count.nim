import tables, strutils

proc countDna*(chain: string): CountTable[char] =
    for c in chain:
        if not (c in "ACGT"):
            raise newException(ValueError, "You have weird DNA.")
        else:
            result.inc(c)

# slower implementation below
# proc countDna*(chain: string): CountTable[char] =
#     for c in chain:
#         if not (c in "ACGT"):
#             raise newException(ValueError, "Oh hell.")
#     result = chain.toCountTable
