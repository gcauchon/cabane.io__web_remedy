use Mix.Config

# Digested version of static files
config :remedy, RemedyWeb.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json",
  root: ".",
  server: true,
  version: Application.spec(:remedy, :vsn)

# Do not print debug messages in production
config :logger, level: :info
