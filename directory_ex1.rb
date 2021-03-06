@students = []
def load_students
    file = File.open("students.csv", "r")
    file.readlines.each do |line|
        name, cohort = line.chomp.split(',')
        @students << {name: name, cohort: cohort.to_sym}
    end
    file.close
end

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    name = gets.chomp
    while !name.empty? do
      @students << {name: name, cohort: :november}
      puts "Now we have #{@students.count} students"
      name = gets.chomp
    end
    @students
end

def letter_search
    puts "Which letter are you searching for?"
    letter = gets.chomp
    letter.upcase
end

def print_header
    puts "The students of Villians Academy".center(100)
    puts "_____________".center(100)
end

def print_students_list
    @students.each do |student|
      puts "#{student[:name]}, #{student[:cohort]} cohort".center(100)
    end
end

def print_footer
    puts "Overall, we have #{@students.count} great students".center(100)
end

def print_menu
  puts "What would you like to do?"
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(choice)
  case choice
    when "1"
      students = input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      load_students
    when "9"
      exit
    else
      puts "I dont't know what you meant, try again"
  end
end

def save_students
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def interactive_menu
    loop do
      print_menu
      process(gets.chomp)
    end
end

interactive_menu