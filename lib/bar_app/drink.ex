defmodule BarApp.Drink do
  use Ecto.Schema
  require Ecto.Query

  schema "drinks" do
    field :name, :string
    field :image_path, :string
    field :description, :string
  end

  def getAll() do
    BarApp.Repo.all(BarApp.Drink)
  end

  defp changset(drink, map_of_changes) do
    drink
    |> Ecto.Changeset.cast(map_of_changes, [:name, :description, :image_path])
    |> Ecto.Changeset.validate_required([:name])
    |> Ecto.Changeset.unique_constraint(:name)


  end

  def addDrink(name, description, image_path) do
    %BarApp.Drink{}
    |> changset(%{name: name, description: description, image_path: image_path})
    |> BarApp.Repo.insert()
  end
end
