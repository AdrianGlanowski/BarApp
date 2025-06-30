Here's what I learnt doing this project:
- Ecto provides identity by default, I don't have to explicitly define it:
    - create table(:drinks) do </br>
        ~~add :id, :identity~~ </br>
        add :name, :string, size: 50 </br>
        add :image_path, :string, null: true </br>
        add :description, :text, null: true </br>
        end