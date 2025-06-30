defmodule BarAppWeb.DrinksLive do
  use BarAppWeb, :live_view

  alias BarApp.Drinks

  def mount(_params, _session, socket) do
    socket = assigns(socket, Drinks.getAll())
  end
end