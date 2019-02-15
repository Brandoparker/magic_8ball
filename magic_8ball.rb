require 'pry'
require 'colorize'

def puts_git(cmd)
  puts 'git #{cmd} -h'
  eight_ball
  add_answers
  reset_answers
end

@answers = ['Yes','Maybe','Signs point to yes','Never','No','Not sure','Ask again later'] 

def eight_ball
  puts
  puts
  puts "---Welcome to the Magic 8 Ball!---" .colorize(:cyan)
  puts "Please type a question, or pick a number" .colorize(:cyan)
  puts "1) Add an Answer" .colorize(:cyan)
  puts "2) Show Answers" .colorize(:cyan)
  puts "3) quit" .colorize(:cyan)
  puts "4) Reset to Default Answers" .colorize(:cyan)
  question = gets.strip
    
  def add_answers
    puts "---Type an Answer---" .colorize(:cyan)
      user_answers = gets.strip
      @answers << user_answers
    puts
    puts
    puts "--- #{user_answers} has been added!---" .colorize(:cyan)
  end

  def reset_answers
    puts "---Answers have been reset---" .colorize(:cyan)
    @answers = @answers.slice(0,6)
  end
  
  # Quit & Add 
  if question == '3'
    puts "---Have a Nice Day!---" .colorize(:cyan)
    puts  
    exit
  elsif question == '1'
      add_answers
    #The actual question and answer
  elsif question == '2'
    puts
    puts "---The answers are---" .colorize(:cyan)
    puts
    puts @answers 
  elsif question == '4'
    reset_answers
  else
    puts
    puts "---THE MAGIC 8BALL SAYS:---" .colorize(:cyan)
    puts @answers.sample .colorize(:red)
  end
    eight_ball
end
eight_ball

