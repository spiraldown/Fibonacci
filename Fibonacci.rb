def iterative_fib(number)
array = []
counter = number
a = 0
b = 1
c = 0
print "#{a}, "
  until counter == 0
    c = a + b
    a = b
    b = c
    print "#{c}, "
    counter = counter - 1
  end
puts 
end

@array = [0,1]
def recursive_fib(number)
  return number if number < 2

  @array[number] = recursive_fib(number - 1) + recursive_fib(number - 2)

end

# iterative_fib(8)

# recursive_fib(4)
# print @array

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
