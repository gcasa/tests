def char_val( c )
  vowels = 'aeiouAEIOU'
  consonants = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'
  val = c.ord
  if (vowels.include? c)
    val = -val
  elsif (consonants.include? c) == false
    val = 0
  end
  val
end

s = 0

# string...
string =  'Dealing with failure is easy: Work hard to improve. Success is also '
string += 'easy to handle: You’ve solved the wrong problem. Work hard to '
string += 'improve.'

# add it up...
string.each_char do |c|
  v = char_val(c)
  s += v
end

puts "Sum = #{s}"