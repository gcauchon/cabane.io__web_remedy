use Mix.Config

# Configure the endpoint for tests
config :remedy, RemedyWeb.Endpoint,
  http: [port: 4001],
  server: false,
  secret_key_base: "test",
  session_key: "test",
  signing_salt: "test",
  static_url: [
    scheme: "https",
    host: "example.com",
    port: "443"
  ],
  url: [
    scheme: "https",
    host: "example.",
    port: "443"
  ]

# Print only warnings and errors during test
config :logger, level: :warn

# Configure Repo with a sandboxed Postgres
config :remedy, Remedy.Repo, pool: Ecto.Adapters.SQL.Sandbox
