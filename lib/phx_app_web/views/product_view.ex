defmodule PhxAppWeb.ProductView do
  use PhxAppWeb, :view
  alias PhxApp.Catalog

  def category_select(f, changeset) do
    existing_ids =
      changeset
      |> Ecto.Changeset.get_change(:categories, [])
      |> Enum.map(& &1.data.id)

    category_opts =
      for cat <- Catalog.list_categories() do
        [key: cat.title, value: cat.id, selected: cat.id in existing_ids]
      end

    multiple_select(f, :category_ids, category_opts)
  end
end
