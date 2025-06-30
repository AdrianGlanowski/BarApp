defmodule BarApp.Repo.Migrations.CreateIngredientsTypes do
  use Ecto.Migration

  def change do
    create table(:ingredients_types) do
      add :name, :string
    end
    create index("ingredients_types", [:name])
  end
end
