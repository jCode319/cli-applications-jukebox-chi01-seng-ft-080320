require 'pry'

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_name
  puts "Enter your name: "
  user_name = gets.strip
end

def say_hello(name)
  "Hi #{user_name}!"
end


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def list(songs)
  songs.each_with_index do |songs, i|
    puts "#{i+1}. #{songs}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  if songs.include?(user_input)
      puts "Playing #{user_input}"
  elsif (1..9).to_a.include?(user_input.to_i)
      puts "Playing #{songs[user_input.to_i - 1]}"
    else
      puts "Invalid input, please try again"
  end
end
#binding.pry

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip

  while user_input != "exit"
    if user_input == "help"
  end
end
  puts "Goodbye"
end

#The play command should ask a user to input a song name or track number. It should then output the appropriate song name.
