import nre, strutils

proc abbreviate*(name: string): string =
  var firstCharAdded = false
  for c in name.toUpperAscii:
    if c.isAlphaAscii and not firstCharAdded:
      result.add $c
      firstCharAdded = true
    elif not c.isAlphaAscii and not (c == '\''):
      firstCharAdded = false 
    
# proc abbreviate*(name: string): string =
#   for found in name.toUpperAscii.findIter(re"([A-Z])[A-Z']*"):
#     result.add found.captures[0]
  
