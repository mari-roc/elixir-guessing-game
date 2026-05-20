defmodule GuessingGame.Parse do
  def check_guess(guess, target) do
    case Integer.parse(guess) do
      {guess, _} when guess == target ->
        :correct

      {guess, _} when guess < target ->
        :too_low

      {_guess, _} ->
        :too_high

      :error ->
        :invalid
    end
  end
end
