import tables, strutils

proc isPangram*(phrase: string): bool =
  let counts = phrase.toLowerAscii.toCountTable
  for c in {'a'..'z'}:
    if counts[c] == 0:
      return false
  return true
