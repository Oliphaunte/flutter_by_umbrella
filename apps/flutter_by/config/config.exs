# Since configuration is shared in umbrella projects, this file
# should only configure the :flutter_by application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :flutter_by,
  ecto_repos: [FlutterBy.Repo]

import_config "#{Mix.env()}.exs"
