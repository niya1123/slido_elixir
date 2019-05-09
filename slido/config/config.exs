# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :slido,
  ecto_repos: [Slido.Repo]

# Configures the endpoint
config :slido, SlidoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OajkG5dnyO12AA29OZtuiK84NiMfJPh7Xh72M47w4RszakY9oSgeO/VEzQquANCR",
  render_errors: [view: SlidoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Slido.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
