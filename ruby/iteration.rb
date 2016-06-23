def test_method
  puts "This is before a block!"
  yield
  puts "This is after a block!"
end

test_method {3.times{|x| puts "This is happening #{x} times"}}

breakfast = ["hash browns", "eggs", "bacon"]
second_breakfast = {pancakes: "silver dollar", frenchtoast: "sour dough french toast"}

breakfast.each {|item| puts "We are having #{item} for breakfast!"}
p breakfast

breakfast.map! do |item|
  item.upcase
end
p breakfast

second_breakfast.each do |item|
  puts item
end
p second_breakfast
