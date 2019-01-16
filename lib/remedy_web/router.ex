defmodule RemedyWeb.Router do
  use Phoenix.Router
  use Plug.ErrorHandler
  use Sentry.Plug

  pipeline :api do
    plug(:accepts, ["json"])
  end

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  scope "/", RemedyWeb do
    pipe_through(:browser)

    get("/", Welcome.Controller, :index)
    get("/health", Health.Controller, :index)
  end

  # GraphQL
  scope "/graphql" do
    pipe_through(:api)

    forward(
      "/",
      Absinthe.Plug,
      json_codec: Jason,
      schema: Remedy.GraphQL.Schema,
      socket: RemedyWeb.Socket
    )
  end

  # Development tools
  if :dev == Mix.env() do
    # GraphiQL
    scope "/graphiql" do
      pipe_through(:api)

      forward(
        "/",
        Absinthe.Plug.GraphiQL,
        interface: :playground,
        json_codec: Jason,
        schema: Remedy.GraphQL.Schema,
        socket: RemedyWeb.Socket
      )
    end
  end
end
