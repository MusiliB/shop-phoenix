defmodule ShopWeb.ProductJSON do

  def index() do
    %{data: [
      %{name: "GOW"},
      %{name: "GTA"},
      %{name: "Red Dead"}
    ]}
  end

end
