proc distance*(before: string, after: string): int =
  if before.len != after.len:
    raise newException(ValueError, "you are a miserable human being.")
  result = 0
  for i, val in before:
    result += int(val != after[i])

