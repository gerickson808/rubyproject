def reverser
	yield.split.map(&:reverse).join(" ")
end

def adder (add = 1)
	yield + add
end

def repeater (reps = 1)
	reps.times {yield}
end