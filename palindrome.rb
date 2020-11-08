def palindrome?(n)
  string = n.to_s
  if string == string.reverse
    return true
  else
    return false
  end
end

n = 0
s = 0
loop do
  if palindrome?( n )
    s += n
  end
  n += 1
  break if n > 10000
end

puts "total #{s}"