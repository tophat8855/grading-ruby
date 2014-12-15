array = [10, 9, 8]

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

count = 0
ind = 0
while ind < (differences.length)
  if differences[ind] == :down
    count += 1
  elsif differences[ind] == :up
    count -= 1
  else differences[ind] == :even
    count
  end
  ind += 1
end

if count >= 3
  puts "in decline"
else
  puts "not in decline"
end
