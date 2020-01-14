def input_students
  puts "Please enter the names of the students"
  puts "to finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  count = 0
  while count != students.count do
    puts "#{students[count][:name]} (#{students[count][:cohort]} cohort)"
    count += 1
  end
end

=begin 
def print(students)
  puts "Please type the names you want to display, first letter: "
  puts "Type 'all' to print the full list."
  initial = gets.chomp
  students.each_with_index do |student, indx|
    if initial == "all"
      puts "#{indx += 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    elsif student[:name].chars.first == initial && student[:name].length < 12
      puts "#{indx += 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end
=end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
