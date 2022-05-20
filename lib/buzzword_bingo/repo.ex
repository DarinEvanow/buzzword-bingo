defmodule BuzzwordBingo.Repo do
  use Ecto.Repo,
    otp_app: :buzzword_bingo,
    adapter: Ecto.Adapters.Postgres
end
