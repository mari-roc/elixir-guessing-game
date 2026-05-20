defmodule GuessingGame.Cli do
  def hello do
    IO.puts("Hello, welcome to the Guessing Game!\n")
    IO.puts("Try to guess the number between 1 and 100.\n")
    IO.puts("Type 'exit' to quit the game.\n")
    target = GuessingGame.GameEngine.generate_random_number()
    IO.puts("A random number has been generated. Start guessing!")
    GuessingGame.Cli.input_number(target)
  end
  def input_number(target) do
    guess =
      IO.gets("Enter your guess: ")
      |> String.trim()
    GuessingGame.GameEngine.input_number(target, guess)
  end
  def check_number(guess, target) do
    case GuessingGame.Parse.check_guess(guess, target) do
      :correct ->
        IO.puts("Correct!")

      :too_low ->
        IO.puts("Too low!")
        input_number(target)

      :too_high ->
        IO.puts("Too high!")
        input_number(target)

      :invalid ->
        IO.puts("Invalid input!")
        input_number(target)
    end
  end
  def exit_game do
    IO.puts("Thanks for playing! Goodbye!")
    exit(:normal)
  end
end
