defmodule FlutterBy.Repo do
  use Ecto.Repo,
    otp_app: :flutter_by,
    adapter: Ecto.Adapters.Postgres
end
