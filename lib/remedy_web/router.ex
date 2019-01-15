defmodule RemedyWeb.Router do
  use Phoenix.Router
  use Plug.ErrorHandler
  use Sentry.Plug

  pipeline :api do
    plug(:accepts, ["json"])
  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", RemedyWeb do
    pipe_through(:browser)

    get("/", Welcome.Controller, :index)
    get("/health", Health.Controller, :index)
  end

  scope "/", RemedyWeb do
    pipe_through(:api)
  end
end
