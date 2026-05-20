defmodule GuessingGame.Parse do
  def check_guess(guess, target) do
    case Integer.parse(guess) do
      {guess, _} when guess == target ->
        IO.puts("Correct!")
        :correct
      {guess, _} when guess < target ->
        IO.puts("Too low!")
        :too_low
        GuessingGame.GameEngine.input_number(target, guess)
      {guess, _} ->
        IO.puts("Too high!")
        :too_high
        GuessingGame.GameEngine.input_number(target, guess)
    end
  end
end
