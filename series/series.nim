proc slices*(s: string, size: int): seq[string] = 
  if size > s.len or size <= 0:
    raise newException(ValueError, "Invalid slice size.")
  elif size == s.len:
    result.add s
  else:
    for i in 0..s.len-size:
      result.add s[i..size + i - 1] 


