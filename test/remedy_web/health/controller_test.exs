defmodule RemedyWeb.Heatlh.ControllerTest do
  use RemedyWeb.ConnCase

  test "GET /health", %{conn: conn} do
    conn = get(conn, "/health")
    assert text_response(conn, 200) == "The system looks OK."
  end
end
