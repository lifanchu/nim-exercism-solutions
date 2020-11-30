proc isLeapYear*(year: int): bool = 
    let div4 = year mod 4 == 0
    let div100 = year mod 100 == 0
    let div400 = year mod 400 == 0
    return div4 and (not div100 or div400)
