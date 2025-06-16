puts "\nEnter number of students in the class: "
n = gets.chomp().to_i
puts "\nEnter number of subjects for the class: "
sub = gets.chomp().to_i

classroom = {}
marks = []

for i in 0...n
    puts "\nEnter name of the student #{i+1}"
    name = gets.chomp()
    for j in 0...sub
        puts "\nEnter marks of #{name} for subject #{j+1}"
        mark = gets.chomp.to_f
        classroom[name] = marks.push(mark)
    end
    marks = []
end

topper = {}
puts ""

classroom.each do |name,grade|
    student = name
    avg_grade = grade.sum/grade.size.to_f
    puts "#{student}'s average grade is #{avg_grade.round(2)}"
    topper[student] = avg_grade
end

topper_student = topper.key(topper.values.max)
puts "\nTopper of the class is #{topper_student}."
