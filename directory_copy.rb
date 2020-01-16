def input_students
  students = []

  while true do
    puts "Type 'add' to add a student: "
    puts "Type 'update' to update a students details: "
    puts "Type 'exit' to finish: "
    user_input = gets.chomp
    
    if user_input == "add"
      puts "Please enter the name of the student: "
      name = gets.chomp
      puts "Please enter the cohort you're in: "
      cohort = gets.chomp.to_sym
      puts "Please enter your country of birth: "
      country = gets.chomp
      puts "What's your favourite animal: "
      animal = gets.chomp
      puts "What's your favourite colour: "
      colour = gets.chomp

      students << {name: name, cohort: cohort, country_of_birth: country, favourite_animal: animal, favourite_colour: colour}
      puts "Now we have #{students.count} students"
    elsif user_input == "update"
      puts "Please type the value to be updated: "
      old_value = gets.chomp
      puts "Now type the new value: "
      new_value = gets.chomp
    elsif user_input == "exit"
      break
    end
  end
  students
end

def month_selection(input)
  cohort = "not answered"
  months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
    ]
  months.each do |month|
    if month == input
      cohort = month
      break
    end
  end
  p cohort.to_sym
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_all(students)
  count = 0
  while count != students.count do
    puts "#{students[count][:name]}, is in the (#{students[count][:cohort]} cohort), from #{students[count][:country_of_birth]}, favourite animal is: #{students[count][:favourite_animal]} and colour: #{students[count][:favourite_colour]}.".center(100)
    count += 1
  end
end

=begin
def print_selection(students)
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
print_all(students)
# print_selection(students)
print_footer(students)
