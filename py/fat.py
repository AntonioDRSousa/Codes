def fat(x):
    if x==0:
        return 1
    return x*fat(x-1)

n = int(input("n = "))
print("factorial of "+str(n)+" is "+str(fat(n)))
