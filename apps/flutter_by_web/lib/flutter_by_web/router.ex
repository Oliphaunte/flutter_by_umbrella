defmodule FlutterByWeb.Router do
  use FlutterByWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug :fetch_session
  end

  scope "/api", FlutterByWeb do
    pipe_through :api

    resources "/sessions", SessionController, only: [:create, :delete]
  end
end
