defmodule BarApp.Repo.Migrations.CreateIngredients do
  use Ecto.Migration

  def change do
    create table(:ingredients) do
      add :name, :string, size: 50
      add :type_id, references(:ingredients_types, type: :integer, column: :id), null: true
      add :image_path, :string, null: true
      add :description, :text, null: true
    end

    create index("ingredients", [:name])
    create index("ingredients", [:image_path])
  end
end
