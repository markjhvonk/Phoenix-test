# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoneix_test,
  ecto_repos: [PhoneixTest.Repo]

# Configures the endpoint
config :phoneix_test, PhoneixTest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PL0HBnl5YKZ09fMhATrPiRSfuzh3foGeuskkuJ0amg1Q1PLEESjKhlnUB3QMeM2s",
  render_errors: [view: PhoneixTest.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoneixTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
