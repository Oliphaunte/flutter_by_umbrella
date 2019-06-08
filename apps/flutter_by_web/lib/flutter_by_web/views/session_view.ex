defmodule FlutterByWeb.SessionView do
  use FlutterByWeb, :view
  alias FlutterByWeb.SessionView

  def render("new_session.json", %{user: user}) do
    %{user_id: user.id, 
      email: user.email}
  end
end
