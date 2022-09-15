defmodule PhxAppWeb.CartView do
  use PhxAppWeb, :view

  alias PhxApp.ShoppingCart

  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val, 2)}"
end
