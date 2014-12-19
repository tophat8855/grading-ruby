require 'json'

@students = JSON.parse(File.read('data/grades.json'))

decline_count = 0

@students.each_value do |value|

  array = value
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

  while (array_index < (differences.length))
    if differences[array_index] == :down
      number_of_downs += 1
      if number_of_downs == 3 && (differences.length - array_index) < 3
        puts "in decline"
        decline_count +=1
        break
      end
    elsif differences[array_index] == :up
      number_of_downs = 0
    end
    array_index += 1
  end
  if number_of_downs < 3
    puts "not in decline"
  end
end

puts "This many students are in decline:"
puts decline_count
