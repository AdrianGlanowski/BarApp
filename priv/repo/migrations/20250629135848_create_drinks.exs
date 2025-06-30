defmodule BarApp.Repo.Migrations.CreateDrinks do
  use Ecto.Migration

  def change do
    create table(:drinks) do
      add :name, :string, size: 50
      add :image_path, :string, null: true
      add :description, :text, null: true
    end
    create index("drinks", [:name])
    create index("drinks", [:image_path])
  end
end
