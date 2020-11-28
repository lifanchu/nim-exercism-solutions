# proc reverse*(text: string): string =
#   result = text 
#   for i in countdown(text.high, 0):
#     result[text.high - i] = text[i] 

proc reverse*(text: string): string =
  result = newstring(text.len) 
  for i in countdown(text.high, 0):
    result[text.high - i] = text[i]  

# proc reverse*(text: string): string =
#   result = newstringofcap(text.len) 
#   for i in countdown(text.high, 0):
#     result.add text[i] 
echo reverse("cowboy")
