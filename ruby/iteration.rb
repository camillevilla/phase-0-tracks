def test_method
  puts "This is before a block!"
  yield
  puts "This is after a block!"
end

test_method {3.times{|x| puts "This is happening #{x} times"}}

breakfast = ["hash browns", "eggs", "bacon"]
second_breakfast = {pancakes: "silver dollar", frenchtoast: "sour dough french toast", jam: "bacon"}

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

#Iterating through items, delete items that meet a condition
breakfast.delete_if {|x| x == "BACON" }
p breakfast

second_breakfast.delete_if {|key, value| key == :pancakes}
p second_breakfast

#can also use reject
breakfast = ["EGGS", "cereal", "granola", "cream"]
breakfast.reject! {|x| x == "granola"}
p breakfast

second_breakfast.reject! {|key, value| key == :frenchtoast}
p second_breakfast

#filters data structure for items that meet a condition
breakfast.keep_if {|x| x == 'EGGS'}
p breakfast

second_breakfast.keep_if {|key,value| key == :jam }
p second_breakfast

#can also use select
breakfast = ["EGGS", "cereal", "granola", "cream"]
p breakfast
breakfast.select! {|x| x == 'cereal' || x == 'cream'}
p breakfast

second_breakfast = {pancakes: "silver dollar", frenchtoast: "sour dough french toast", jam: "bacon"}
p second_breakfast
second_breakfast.select! {|key| key == :pancakes}
p second_breakfast

#remove items until a condition evalutes to false
breakfast = ["eggs", "biscuits", "scrapple"]
p breakfast
new_breakfast = breakfast.take_while {|x| x != "biscuits"}
p new_breakfast
