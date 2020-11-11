#first we print the list of students
students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]
puts "The students of Villians Academy"
puts "_____________"
students.each do |student|
    puts student
end
#finally, we print the total number of students
print "Overall, we have #{student.count} great students"