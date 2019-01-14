defmodule RemedyWeb.Router do
  use Phoenix.Router
  use Plug.ErrorHandler
  use Sentry.Plug

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", RemedyWeb do
    pipe_through(:api)

    get("/health", Health.Controller, :index)
  end
end
