defmodule FlutterByWeb.Router do
  use FlutterByWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", FlutterByWeb do
    pipe_through :api
  end
end
