# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :server,
  ecto_repos: [Server.Repo]

# Configures the endpoint
config :server, ServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gUV3mzpt1FAyQUroLJl2hHB6vQTkhbgfrvaPhIpXdbgLOZFoa2R1h7LJcCd8dwI5",
  render_errors: [view: ServerWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Server.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :cors_plug,
  origin: ["http://192.168.0.160:8080"],
  max_age: 86400,
  methods: ["GET", "POST"]