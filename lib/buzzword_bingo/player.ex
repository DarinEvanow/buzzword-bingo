defmodule BuzzwordBingo.Player do
  @derive {Jason.Encoder, only: [:name, :color]}

  @enforce_keys [:name, :color]
  defstruct [:name, :color]

  @doc """
  Creates a player with the given `name` and `color`.
  """
  def new(name, color) do
    %BuzzwordBingo.Player{name: name, color: color}
  end
end
