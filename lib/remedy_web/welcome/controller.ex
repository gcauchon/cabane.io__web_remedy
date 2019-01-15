defmodule RemedyWeb.Welcome.Controller do
  use RemedyWeb, :controller

  @spec index(Plug.Conn.t(), map) :: Plug.Conn.t()
  def index(conn, _) do
    render(conn, "index.html")
  end
end
