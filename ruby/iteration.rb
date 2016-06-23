def test_method
  puts "This is before a block!"
  yield
  puts "This is after a block!"
end

test_method {3.times{|x| puts "This is happening #{x} times"}}
