import strutils

proc abbreviate*(name: string): string =
  var firstCharAdded = false
  for c in name:
    if c.isAlphaAscii and not firstCharAdded:
      result.add c.toUpperAscii
      firstCharAdded = true
    elif not c.isAlphaAscii and not (c == '\''):
      firstCharAdded = false 
    
# import nre
# proc abbreviate*(name: string): string =
#   for found in name.toUpperAscii.findIter(re"([A-Z])[A-Z']*"):
#     result.add found.captures[0]
  
