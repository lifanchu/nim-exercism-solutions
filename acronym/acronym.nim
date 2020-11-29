import nre, strutils

proc abbreviate*(name: string): string =
  for found in name.toUpperAscii.findIter(re"([A-Z])[A-Z']*"):
    result.add found.captures[0]
  
