import tables
from sequtils import zip

proc toRna*(dna: string): string =
  result = newString(dna.len)
  const 
    dnaBases = ["A", "T", "C", "G"]
    rnaBases = ["U", "A", "G", "C"]

  var trans = zip(dnaBases, rnaBases).toTable

  for i in 0..dna.len:
    result[i] = trans[dna[i]]]



