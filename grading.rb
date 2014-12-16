array =[10, 9, 8]
index = 0
differences = []

while index < (array.length - 1)
  if array[index] < array[index + 1]
    differences << :up
  elsif array[index] > array[index + 1]
    differences << :down
  else
    differences << :even
  end
  index += 1
end

p differences

array_index = 0
number_of_downs = 0

if differences.last == :up || differences.last == :even || differences.length < 3
  puts "not in decline"
else
  # while (array_index < (differences.length - 1)) && (number_of_downs < 3)
  #   if differences[array_index] == :down
  #     number_of_downs += 1
  #   end
  #   array_index += 1
  # end
  puts "in decline"
end


# count = 0
# ind = 0
# while ind < (differences.length)
#   if differences[ind] == :down
#     count += 1
#   elsif differences[ind] == :up
#     count -= 1
#   else differences[ind] == :even
#     count
#   end
#   ind += 1
# end

# if count >= 3
#   puts "in decline"
# else
#   puts "not in decline"
# end
