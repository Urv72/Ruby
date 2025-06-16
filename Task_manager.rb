class Task_manager
  @@tm = []

  def add
    puts "\nEnter a Task to add in your to-do list"
    task = gets.chomp()
    @@tm.push(task)
  end

  def view
    puts "\nThis is your current to-do list:"
    for i in 0...@@tm.length do
      puts "#{i+1} #{@@tm[i]}"
    end
  end

  def delete
    puts "\nEnter a Task number to delete from your to-do list"
    task_number = gets.chomp().to_i
    for i in 0...@@tm.length do
      if task_number-1 == i
        @@tm.delete_at(i)
      end
    end
  end

end


operation = 0
while operation != 4
  puts "\nSelect your operation\n 1.Add Task 2.View added task 3.Delete Tasks 4.Exit\n"
  operation = gets.chomp().to_i

  tasks = Task_manager.new

  case operation
  when 1
    tasks.add
  when 2
    tasks.view
  when 3
    tasks.delete
  when 4
    puts "\nThank you for checking your to-do list today. Make sure to complete the tasks!"
  else
    puts "\nPlease, select a valid choice."
  end
end