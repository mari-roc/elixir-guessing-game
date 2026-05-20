defmodule GuessingGame.Parse do
  def check_guess(guess, target) do
    case Integer.parse(guess) do
      {guess, _} when guess == target ->
        IO.puts("Correct!")
        :correct
      {guess, _} when guess < target ->
        IO.puts("Too low!")
        :too_low
        GuessingGame.Cli.input_number(target)
      {guess, _} ->
        IO.puts("Too high!")
        :too_high
        GuessingGame.Cli.input_number(target)
    end
  end
end
