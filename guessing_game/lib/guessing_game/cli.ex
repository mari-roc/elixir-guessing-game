defmodule GuessingGameCli do
  def hello do
    IO.puts("Hello, welcome to the Guessing Game!\n")
    IO.puts("Try to guess the number between 1 and 100.\n")
    IO.puts("Type 'exit' to quit the game.\n")
    generate_random_number()
  end
  def generate_random_number do
    target = :rand.uniform(100)
     IO.puts("A random number has been generated. Start guessing!")
     target
    input_number(target)
  end
  def input_number(target) do
    guess =
      IO.gets("Enter your guess: ")
      |> String.trim()
      |> String.to_integer()
    guess == :exit && exit(:normal)
    check_guess(guess, target)
  end
  def check_guess(guess, target) do
    case guess do
      ^target -> :correct
      _ when guess < target -> :too_low
      _ -> :too_high
    end
  end
end
