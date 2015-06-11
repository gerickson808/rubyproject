def add (num1,num2)
	result = num1 + num2
end

def subtract num1,num2
	result = num1 - num2
end

def sum (numbers)
	result = numbers.inject(0) {|total,number| total + number}
end

def multiply(*numbers)
	result = numbers.inject {|product,number| product * number}
end

def power number,power
	result =number ** power
end

def factorial number
	if number == 0
		result = 1
	else
		result = (1..number).inject(:*)
	end
end