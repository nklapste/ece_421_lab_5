######## Proc examples in Ruby ############

##### Example 1

def block_test(&myblock)
	myblock.call
end
block_test { puts "Hello from the block"}


##### Example 2

test_proc = Proc.new do
	puts "Hello from Proc"
end
test_proc.call


##### Example 3 - Procs with arguments

test_proc = Proc.new do |something|
	puts "Let’s try ‘+something’!"
end
test_proc.call "Ruby programming"

##### Example 4 - Methods with multiple procs as arguments

def test_method procArg
	procArg.call
end

testArg1 = Proc.new do
	puts "Hi there!"
end
testArg2 = Proc.new do
	puts "Bye bye!"
end
test_method testArg1
test_method testArg2


#### Example 5 - Methods that return Procs

def test procArg1, procArg2
	Proc.new do |arg|
		procArg2.call(procArg1.call(arg))
	end
end
square = Proc.new do |arg|
	arg * arg
end
double = Proc.new do |arg|
	arg + arg
end
squareAfterDouble = test double, square
puts squareAfterDouble.call (2)
