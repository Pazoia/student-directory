def input_students
  puts "Please enter the names of the students"
  puts "to finish, just hit return twice"
  name = gets.chomp.capitalize
  puts "Cohort? "
  cohort = gets.chomp.capitalize
  month = month_selection(cohort)

  students = []
  
  while !name.empty? do
    students << {name: name, cohort: month}
    puts "Now we have #{students.count} students"
    name = gets.chomp.capitalize
    cohort = gets.chomp.capitalize
    month = month_selection(cohort)
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

  cohort = input if months.include?(input)

# months.each do |month|
#   if month == input
#     cohort = month
#     break
#   end
  cohort.to_sym
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(50)
  end
end

def list_cohort(students)
  cohorts = students.map do |student|
    student[:cohort]
  end
  cohorts.uniq
end

def print_by_cohort(students)
  list_cohort(students).each do |month|
    puts month
    students_by_cohort = students.select do |student|
      student[:cohort] == month
    end
    print(students_by_cohort)
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
#print(students) if students.count > 0
print_by_cohort(students)
print_footer(students)
