require 'pry'
def roll_call_dwarves(array)
  array.map.with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def summon_captain_planet(array)
# upcase = array.map(&:upcase)
# return upcase
# final = upcase
# array.map! {|word| "#{word}!"}
one = array.map { | item | item[0].upcase + item[1..-1] }
one.map! {|word| "#{word}!"}
return one
end

def long_planeteer_calls(array)
 array.any? do |word|
  if word.length > 4 
    true
  elsif word.length <= 4
    false
  end 
end
end

def find_the_cheese(array)
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]

  array.find do |item|
    if cheese_types.include?(item)
      item
    else 
      nil
    end
  end

  # array.find do |item|
  #   if item.include?(cheese_types) 
  #     return item
  #   else 
  #     return nil
  #   end 
  # end 
  # binding.pry
end
