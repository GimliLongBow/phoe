# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :phoe, Phoe.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "phoe_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


config :phoe, Phoe.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "phoe_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


# Configures the endpoint
config :phoe, Phoe.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "1wGtFvX12gz5pkI+YpBiTVtPDWftM1Wk0AIKripGQGApIZdjllUJcutoD3tU5urx",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Phoe.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
