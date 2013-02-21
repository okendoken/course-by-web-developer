def one_more(array)
  array << array[array.length - 1]
end

puts "#{one_more([1, 2, 3])} should return [1, 2, 3, 3]."