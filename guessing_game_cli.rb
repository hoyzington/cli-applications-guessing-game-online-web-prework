
def generate_number
  rand(6) + 1
end


def prompt
  puts "The computer is thinking of a number betweeen 1 and 6."
  puts "Guess the number!"
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


def process(guess, number)
  if guess == "exit"
    aborting
  elsif guess.to_i == number
    winning
  else
    losing(number)
  end
end


def run_guessing_game
  number = generate_number
  prompt
  guess = guessing
  process(guess, number)
end

