import strformat

func twoFer*(name = "you"): string =
    &"One for {name}, one for me."

# proc twoFer*(name = "you"): string =
#     "One for " & name & ", one for me."

# proc twoFer*(name = "you"): string =
#     &"One for {name}, one for me."

