defmodule Phoe.AdminControllerTest do
  use Phoe.ConnCase

  test "GET /admin", %{conn: conn} do
    conn = get conn, "/admin"
    assert html_response(conn, 200) =~ "Dashboard"
  end

  # test "GET /page", %{conn: conn} do
  #   conn = get conn, "/page"
  #   assert html_response(conn, 200) =~ "Showy"
  # end
end
