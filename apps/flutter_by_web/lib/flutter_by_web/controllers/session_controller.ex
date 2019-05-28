defmodule FlutterByWeb.SessionController do
  use FlutterByWeb, :controller

  alias FlutterBy.Accounts
  alias FlutterByWeb.{ErrorView, UserView}

  action_fallback FlutterByWeb.FallbackController

  def create(conn, %{"user" => %{"email" => email, "password" => password }}) do
    case Accounts.authenticate_user(email, password) do
      {:ok, user} ->
        conn
        |> put_session(:current_user_id, user.id)
        |> fetch_session()
        |> put_status(:ok)
        |> render("new_session.json", user: user)
      {:error, message} ->
        conn
        # |> delete_session(:current_user_id)
        |> put_status(:unauthorized)
        |> render(:authorized, message: message)
    end
  end
  def create(conn, _) do
    conn
    |> put_status(:unauthorized)
    |> render(ErrorView, "401.json", message: "womp")
  end
end
