defmodule SlidoWeb.PageController do
  use SlidoWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
