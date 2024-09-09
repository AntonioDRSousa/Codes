som = 0
n = 0

while True:
    try:
        x = str(input("x"+str(n+1)+" = "))
        if x=="":
            break
        som += float(x)
        n += 1
    except:
        print("Error .....")

if n>0:
    print("Average is equal to "+str(som/n))
else:
    print("Error. There aren't numbers for computation of average .....")
    
