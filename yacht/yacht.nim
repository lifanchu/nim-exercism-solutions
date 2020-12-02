import sequtils, tables
import sets

type
    Rule* = enum
        Ones=1,  Twos,  Threes,  Fours,  Fives,  Sixes,  FullHouse,  
        FourofaKind, LittleStraight,  BigStraight,  Choice,  Yacht

proc score*(raw_outcomes: openArray[int], category: Rule): int =
    let outcomes = raw_outcomes.toSeq
    result = 0

    case category
    of Ones, Twos, Threes, Fours, Fives, Sixes:
        result = outcomes.toCountTable[ord(category)] * ord(category)
    of FullHouse:
        let counts = outcomes.toCountTable
        if counts.len == 2 and counts.largest[1] == 3:
            result = outcomes.foldl(a + b)
    of FourOfAKind:
        for k, v in outcomes.toCountTable:
            if v >= 4: 
                result = 4 * k
    of LittleStraight:
        if toHashSet(outcomes) == toHashSet([1, 2, 3, 4, 5]):
            result = 30
    of BigStraight:
        if toHashSet(outcomes) == toHashSet([2, 3, 4, 5, 6]):
            result = 30
    of Choice:
        result = outcomes.foldl(a+b)
    of Yacht:
        if toHashSet(outcomes).len == 1: 
            result = 50 