defmodule PhxAppWeb.PageController do
  use PhxAppWeb, :controller

  def index(conn, _params) do
    redirect(conn, to: Routes.product_path(conn, :index))
  end
end
