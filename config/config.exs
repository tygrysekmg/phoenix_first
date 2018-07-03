# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hello3,
  ecto_repos: [Hello3.Repo]

# Configures the endpoint
config :hello3, Hello3Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s9318kqKWrsnIXNv/Pb8XciMZH8L1zkG8cZkzSxJN6nAXB36tS6IvPHM/EuEk5wa",
  render_errors: [view: Hello3Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hello3.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
