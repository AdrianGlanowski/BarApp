defmodule BarApp.Repo.Migrations.CreateRecipes do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :drink_id, references(:drinks, type: :integer, column: :id)
      add :ingredient_id, references(:ingredients, type: :integer, column: :id)
      add :quantity, :float
    end
  end
end
