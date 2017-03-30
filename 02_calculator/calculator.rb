#write your code here
def add(int1, int2)
	p int1 + int2
end

def subtract(*int)
	int.reduce(:-)
end

def sum(int)
	return 0 if int.length == 0
	int.reduce(:+)
end

def multiply(*int)
	int.reduce(:*)
end

def power(base, exp)
	base **exp
end

#4! = 4*3*2*1 = 24
#loop through integers, multiplying each time
def factorial(int)
	return 0 if int == 0
	index = 1
	factorial = 1
	until index == int
		index +=1
		factorial *= index
	end
	factorial	
end