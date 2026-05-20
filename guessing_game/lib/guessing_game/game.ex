defmodule GuessingGame.GameEngine do
  def generate_random_number do
    target = :rand.uniform(100)
      target
  end
  def input_number(target, guess) do
    guess == :exit && exit(:normal)
    GuessingGame.Parse.check_guess(guess, target)
  end
end
