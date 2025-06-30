defmodule BarApp.Repo do
  use Ecto.Repo,
    otp_app: :bar_app,
    adapter: Ecto.Adapters.SQLite3
end
