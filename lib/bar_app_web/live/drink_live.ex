defmodule BarAppWeb.DrinkLive do
  use BarAppWeb, :live_view

  alias BarApp.Drink

  def mount(_params, _session, socket) do
    socket = assign(socket, drinks: Drink.getAll())
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    Drinks list
    <ul>
      <%= for drink <- @drinks do %>
        <li>
          <%= drink.name %>
        </li>
      <% end %>
    </ul>
    """
  end
end
