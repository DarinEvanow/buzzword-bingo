import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :buzzword_bingo, BuzzwordBingoWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "EJSeZHgZV3BKMD9/y3XNgIBqYY9LYrVMg1EzW9abSjKvRVVtV73CVibin6xPTkMX",
  server: false

# In test we don't send emails.
config :buzzword_bingo, BuzzwordBingo.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
