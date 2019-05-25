# Since configuration is shared in umbrella projects, this file
# should only configure the :flutter_by_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :flutter_by_web,
  ecto_repos: [FlutterBy.Repo],
  generators: [context_app: :flutter_by]

# Configures the endpoint
config :flutter_by_web, FlutterByWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nbWQg5wot6eDRBAFgY1HYmX+9EiSz+JdhUAS4wO8ziUKcJIE5MbmxFy5nlS8VzV8",
  render_errors: [view: FlutterByWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: FlutterByWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
