defmodule PhxAppWeb.CartController do
  use PhxAppWeb, :controller

  alias PhxApp.ShoppingCart

  def show(conn, _params) do
    render(conn, "show.html", changeset: ShoppingCart.change_cart(conn.assigns.cart))
  end
end
