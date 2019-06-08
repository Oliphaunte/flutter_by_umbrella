# Since configuration is shared in umbrella projects, this file
# should only configure the :flutter_by application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :flutter_by, FlutterBy.Repo,
  username: System.get_env("DATABASE_USER"),
  password: System.get_env("DATABASE_PASSWORD"),
  database: "flutter_by_dev",
  hostname: "localhost",
  pool_size: 10