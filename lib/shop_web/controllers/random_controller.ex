defmodule ShopWeb.RandomController do
  use ShopWeb, :controller

  def random(conn, _params) do
    # json(conn, %{message: "This is json"})
    render(conn, :random)
  end
end
