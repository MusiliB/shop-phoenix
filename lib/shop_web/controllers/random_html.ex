defmodule ShopWeb.RandomHTML do
  use ShopWeb, :html

  def random(assigns) do
    ~H"""
    <h1>This is a random function</h1>
    """
  end
end
