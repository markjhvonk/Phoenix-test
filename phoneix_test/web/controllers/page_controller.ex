defmodule PhoneixTest.PageController do
  use PhoneixTest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
