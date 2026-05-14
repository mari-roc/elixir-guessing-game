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
    guess == :exit && exit(:normal)
    check_guess(guess, target)
  end
  def check_guess(guess, target) do
    case Integer.parse(guess) do
      {guess, _} when guess == target ->
        IO.puts("Correct!")
        :correct
      {guess, _} when guess < target ->
        IO.puts("Too low!")
        :too_low
        input_number(target)
      {guess, _} ->
        IO.puts("Too high!")
        :too_high
        input_number(target)
    end
  end
end
