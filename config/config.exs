# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :proa_user,
  ecto_repos: [ProaUser.Repo]

# Configures the endpoint
config :proa_user, ProaUser.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "20PXSPxvnJrqJZ2QtzwFCuNF9KhDFXVFJ9FbIFU/JYPEuXRYVUGnH6vjPg7003cU",
  render_errors: [view: ProaUser.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ProaUser.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
