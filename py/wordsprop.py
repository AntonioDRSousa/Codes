import random

length = int(input("length = "))
nprop = int(input("number of proprieties = "))
nwords = int(input("number of words = "))

words = []
prop = []
for i in range(nwords):
    w = [None]*length
    p = [None]*nprop
    for j in range(length):
        r=random.randint(0,25)
        w[j]=chr(r+65)
    for j in range(nprop):
        r=random.randint(0,25)
        p[j]=chr(r+65)
    words.append(w)
    prop.append(p)

for i in range(nwords):
    for j in words[i]:
        print(j,end="")
    print(" | ",end="")
    for j in prop[i]:
        print(j,end="")
    print()
