
def number
  rand(6) + 1
end


def prompt
  puts "The computer is thinking of a number betweeen 1 and 6."
  puts "Guess the number!"
end


def process(guess, number)
  if guess == number
    winning
  elsif guess == "exit"
    aborting
  else
    losing
end


def guessing
  gets.chomp
end


def winning
  puts "You guessed the correct number!"
end


def losing(num)
  puts "Sorry! The computer guessed #{num}."
end


def aborting
  puts "Goodbye!"
end


def run_guessing_game
  num = number
  prompt
  guess = guessing
  process(guess, num)
end

