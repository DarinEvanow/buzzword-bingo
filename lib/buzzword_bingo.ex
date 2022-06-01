defmodule BuzzwordBingo do
  use Application

  def start(_type, _args) do
    children = [
      {Registry, keys: :unique, name: BuzzwordBingo.GameRegistry},
      BuzzwordBingo.BuzzwordCache,
      BuzzwordBingo.GameSupervisor
    ]

    :ets.new(:games_table, [:public, :named_table])

    opts = [strategy: :one_for_one, name: BuzzwordBingo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
