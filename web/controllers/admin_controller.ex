defmodule Phoe.AdminController do
  use Phoe.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
