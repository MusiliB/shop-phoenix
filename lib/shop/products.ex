defmodule Shop.Products do
  alias Shop.Repo
  alias Shop.Products.Product

  def list_products, do: Repo.all(Product)

  def find_product_by_slug(slug) do
    Repo.get_by(Product, slug: slug)
  end

  def delete_prod(product = %Product{}) do
    Repo.delete(product)
  end

  def create_product(attrs) do
    %Product{}
    |> Product.changeset(attrs)
    |> Repo.insert()
  end

  def find_prod_by_id(id) do
    Repo.get(Product, id)
  end
end
