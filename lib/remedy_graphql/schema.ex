defmodule Remedy.GraphQL.Schema do
  use Absinthe.Schema

  alias Remedy.GraphQL.Types.{
    Account,
    System
  }

  # Scalars
  import_types(Absinthe.Type.Custom)

  # Types
  import_types(Account)
  import_types(System)

  # Queries
  query do
    @desc "A simple Hello World!"
    field :ping, non_null(:string) do
      resolve(fn _parent, _args, _resolution -> {:ok, "Hello World!"} end)
    end

    import_fields(:account_queries)
  end

  # Mutations
  # mutation do
  #
  # end

  def plugins do
    [Absinthe.Middleware.Dataloader] ++ Absinthe.Plugin.defaults()
  end
end
