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








# def menu
#   puts "-- Ruby 8Ball --"
#   puts "Type a question or pick a number below"
#   puts "1) view answers"
#   puts "2) add an answer"
#   puts "3) exit"
#   handle_choice                      
# end
  
# def handle_choice
#   case gets.strip
#   when 1
#     view_answers
#   when 2
#     add_answer
#   when 
#     puts
#     puts "THE MAGIC 8BALL SAYS:" 
#     puts
#     puts @answers.sample  

#   when 3
#     puts "Have a nice day!"
#     exit
#   else
#     puts "Invalid Choice. Try Again"
#     menu
#   end
#   end
  
#   def view_answers
#     #iterate thru all answers
#     puts @answers
#     menu
#   end
  
#   def add_answer
#     #add contact to contacts array
#     puts "Enter your Answer"
#     entry = gets.chomp
#     @answer.push entry
#     menu
#   end

#   def ask_question
#     puts "What is your Question"
#     ques
    
    
    
#     puts "THE MAGIC 8BALL SAYS:" 
#     puts
#     puts @answers.sample  
#   end  

  
#   menu


# ISSUES
  # adding an answer doesnt go into into the array
  # # Easter egg questions
    # elsif question == "Should I go to the store?"
    #  puts "Yes, and grab me a 12 pack while you're there."
    # elsif question == "Should I start saving money?"
    #  puts "No way. TREAT YO SELF FOOL!"
    #elsif question == 'reset_answers'