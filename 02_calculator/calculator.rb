def add num1, num2
	num1 + num2
end

def subtract num1, num2
	num1 - num2
end

def sum array
	sum = 0
	array.each do |num|
		sum = sum + num
	end

	return sum
end

def multiply num1, num2
	num1 * num2
end

def power num1, num2
	num1**num2
end

def factorial num1
	i = num1
	while i > 1
		i = i-1
		num1 = num1 * i	
	end
	num1
end
