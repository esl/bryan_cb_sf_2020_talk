defmodule AirlineWeb.Router do
  use AirlineWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", AirlineWeb do
    pipe_through :api
  end
end
