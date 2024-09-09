function fact(n)
	if n==0 then
		return 1
	else
		return n*fact(n-1)
	end
end

--[[
print("n = ")
a = io.read("*number")
print(fact(a))
--]]

print(b)

c = 10 ; c = 15 -- comandos podem ser declarados assim
print(c)
c = nil -- deixa de existir como variavel global

--[[ reserved words in lua
and or not
if else elseif
false true
repeat while for until do
then end
return break
in
function
local
nil
--]]

a = "one string "
b = string.gsub(a,"one","another")
d = a .. b
print(d)

c = [[

//Code in C

#include<stdio.h>
#include<stdlib.h>

int main(){
	return 0;
}
]]

print(c)

x = tonumber("10")
print(x+10)
x = tostring(x)
x = x .. "abcde"
print(x)

for i=10,1,-1 do print(i) end
for i=2,10 do print(i) end

function add(...)
	print(arg)
	print("--------------------")
	local x = 0
	for i,v in ipairs(arg) do
		print(v)
		x = x+v
	end
	print("--------------------")
	return x
end
	
print(add(1,2,3))
print(add(3,9))
