Here's what I learnt doing this project:
- Ecto provides identity by default, I don't have to explicitly define it:
  ```
  create table(:drinks) do
    add :id, :identity #wrong
    add :name, :string, size: 50
    add :image_path, :string, null: true
    add :description, :text, null: true
  end
  ```
- Interactive phoenix elements are used in format <*element* phx-*when*="*name_of_event*">
  ```
  <form phx-submit="insert">
  Name: <input type="text" name="name" value={@name} /><br/>
  Lat: <input type="number" name="lat" step="0.1" value={@lat} /><br/>
  Lon: <input type="number" name="lon" step="0.1" value={@lon} /><br/>
  <input type="submit" />
  </form>
  ```