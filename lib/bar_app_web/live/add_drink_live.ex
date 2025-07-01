defmodule BarAppWeb.AddDrinkLive do
  use BarAppWeb, :live_view

  # alias BarApp.AddDrink

  def mount(_params, _session, socket) do
    socket = assign(socket, name: "", description: "", image_path: "")
    {:ok, socket}
  end

  def handle_event("new_drink", %{"name" => name, "description" => description, "image_path" => image_path}, socket) do
    BarApp.Drink.addDrink(name, description, image_path)
    socket = assign(socket, name: "", description: "", image_path: "")
    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
      <form phx-submit="new_drink">
        Name: <input type="text" name="name" value={@name} /><br/>
        Description: <input type="text" name="description" value={@description} /><br/>
        Path to image: <input type="text" name="image_path" value={@image_path} /><br/>
        <input type="submit" />
      </form>
    """
  end
end
