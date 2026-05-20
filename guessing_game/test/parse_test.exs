defmodule GuessingGame.ParseTest do
  use ExUnit.Case

  alias GuessingGame.Parse

  test "returns too_low when guess is smaller" do
    assert Parse.check_guess("5", 10) == :too_low
  end

  test "returns too_high when guess is bigger" do
    assert Parse.check_guess("20", 10) == :too_high
  end

  test "returns correct when guess matches target" do
    assert Parse.check_guess("10", 10) == :correct
  end
end
