defmodule ShopWeb.ProductController do
  use ShopWeb, :controller

  @products [
    %{id: 1, name: "GOW"},
    %{id: 2, name: "GTA"},
    %{id: 3, name: "Red Dead"}
  ]

  def index(conn, _params) do
    conn
    |> assign(:products, @products)
    |> render(:index)
  end

  def show(conn, %{"id" => id}) do
    id = String.to_integer(id)
    product = Enum.find(@products, fn product -> product.id == id end)

    conn
    |> assign(:product, product)
    |> render(:show)
  end
end
