defmodule BuzzwordCacheTest do
  use ExUnit.Case, async: true

  doctest BuzzwordBingo.BuzzwordCache

  alias BuzzwordBingo.BuzzwordCache

  test "getting the cached buzzwords" do
    buzzwords = BuzzwordCache.get_buzzwords()

    assert %{phrase: _, points: _} = List.first(buzzwords)
  end
end
