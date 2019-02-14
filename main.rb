def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts "1: Enter Git Command"
  puts "2: Exit"
  choice = gets.to_i
  case choice
    when 1
      puts "Enter Git command"
      puts_git(gets.strip)
      menu
    when 2
      puts "Thank you for using the program"
      sleep(3)
      print `clear`
      exit
    else
      puts "Invalid choice. Try again"
      menu
  end
end

menu