def fibonacci( n )
  if n <= 2
    return 1
  end
  first = 1
  second = 1
  until n < 3
    f = first + second
    first = second
    second = f
    n -= 1
  end
  f
end

n = 1
s = 0
loop do
  i = fibonacci( n )
  if i.nil?
    n += 1
    next
  end

  break if i > 10000
  puts i

  n += 1
  s += i if i.even? == false
end

puts "Sum #{s}"