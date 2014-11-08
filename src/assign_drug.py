def assign_drug(infilename):
    number = infilename[13:-4] #This allows the number of digits in the number to vary
    number = int(number)
    if number % 2 == 0:
        output = 'placebo'
    else:
        output = 'tylenol'
    return output

assert assign_drug("inflammation_3.dat") == "tylenol"
assert assign_drug("inflammation_4.dat") == "placebo"