require 'pry'

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(song_collection) 
  song_collection.each_with_index { |element, index| puts "#{index + 1}. #{element}" }
end 

def play(song_collection)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  if input.length > 1 
    if song_collection.include?(input) 
      puts "Playing #{input}"
    else  
      puts "Invalid input, please try again"
    end 
  else
    if song_collection[input.to_i - 1]
      puts "Playing #{song_collection[input.to_i - 1]}"
    else  
      puts "Invalid input, please try again"
    end
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(song_collection)
  puts "Please enter a command:"
  input = gets.strip
  until input == "exit" do
    case input
      when "help"
        help 
      when "list"
        list(song_collection) 
      when "play"
        play(song_collection) 
    end 
    puts "Please enter a command"
    input = gets.strip
  end
  exit_jukebox
end 
