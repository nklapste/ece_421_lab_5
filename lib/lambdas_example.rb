######## Lambdas example in Ruby (differnces between Lambdas and Procs)

def test_lambda(arg)
	arg.call(1)
end
param_lambda = lambda {|a,b| puts "#{a} and #{b}"}
param_proc = Proc.new {|a,b| puts "#{a} and #{b}"}

test_lambda(param_proc)
test_lambda(param_lambda)