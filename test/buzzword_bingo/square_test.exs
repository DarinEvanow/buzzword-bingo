defmodule SquareTest do
  use ExUnit.Case, async: true

  doctest BuzzwordBingo.Square

  alias BuzzwordBingo.Square

  test "creating a square from a buzzword" do
    buzzword = %{phrase: "A", points: 10}

    square = Square.from_buzzword(buzzword)

    assert square.phrase == "A"
    assert square.points == 10
  end
end
