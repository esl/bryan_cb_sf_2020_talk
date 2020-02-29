defmodule Airline.Repo do
  use Ecto.Repo,
    otp_app: :airline,
    adapter: Ecto.Adapters.Postgres
end
