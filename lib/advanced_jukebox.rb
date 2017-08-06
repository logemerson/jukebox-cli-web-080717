#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
  "Go Go GO" => 'home/logemerson-82980/code/labs/jukebox-cli/audio/Emerald-Park/01.mp3',
  "LiberTeens" => 'home/logemerson-82980/code/labs/jukebox-cli/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  'home/logemerson-82980/code/labs/jukebox-cli/audio/Emerald-Park/03.mp3',
  "Guiding Light" => 'home/logemerson-82980/code/labs/jukebox-cli/audio/Emerald-Park/04.mp3',
  "Wolf" => 'home/logemerson-82980/code/labs/jukebox-cli/audio/Emerald-Park/05.mp3',
  "Blue" => 'home/logemerson-82980/code/labs/jukebox-cli/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => 'home/logemerson-82980/code/labs/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands: \n- help : displays this help message \n- list : displays a list of songs you can play \n- play : lets you choose a song to play \n- exit : exits this program"
end

def list(list=my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.keys
end


def play
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  puts "What song would you like to play?"
  choice = gets.chomp

  if list(my_songs).include?(choice)
    system `open #{my_songs[choice]}`
  else
    puts "Invalid entry"
  end
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash

end

def exit_jukebox
  puts "Goodbye"
end

def run(a)
  help
  puts "Please enter a command:"
  command = gets.chomp
  case command
  when "list"
    list
  when "play"
    play
  when "help"
    help
  when "exit"
    exit_jukebox
  else
    puts "Invalid entry"
  end
end
