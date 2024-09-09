# dimensions of matrix
m=int(input("m = "))
n=int(input("n = "))

# create matrix of zeros
M = [0]*m
for i in range(m):
    M[i] = [0]*n

# print matrix
for i in range(m):
    for j in range(n):
        print(str(M[i][j])+" ",end="")
    print()
