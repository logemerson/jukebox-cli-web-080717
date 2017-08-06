require 'pry'

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

def help
  puts "I accept the following commands: \n- help : displays this help message \n- list : displays a list of songs you can play \n- play : lets you choose a song to play \n- exit : exits this program"
end

def list(songs)
  array = []

  songs.each_with_index do |song, index|
    array << "#{index+1}. #{song}"
  end
  puts array.join
end

def play(songs)
  numbered_songs = []
  songs.each_with_index do |song, index|
    numbered_songs << [index+1, song]
  end

  puts "Please enter a song name or number:"
  choice = gets.chomp
  song_played = false
  numbered_songs.each do |numbered_song|
    numbered_song[0] = numbered_song[0].to_s
    if numbered_song.include?(choice)
      puts "Playing #{numbered_song[1]}"
      song_played = true
    end
  end
  if song_played == false
    puts "Invalid input, please try again"
  end
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
