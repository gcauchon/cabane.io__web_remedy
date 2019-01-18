defmodule Remedy.GraphQL.Types.Account do
  use Absinthe.Schema.Notation

  alias Remedy.GraphQL.Resolvers

  @desc "A presenter"
  object :presenter do
    field(:id, non_null(:id))
    field(:name, non_null(:string))
    field(:handle, :string)
    field(:company, :string)
    field(:title, non_null(:string))
  end

  object :account_queries do
    field(:presenters, non_null(list_of(non_null(:presenter)))) do
      resolve(&Resolvers.Account.presenters/3)
    end

    field(:presenter, non_null(list_of(non_null(:presenter)))) do
      arg(:id, non_null(:id))

      resolve(&Resolvers.Account.presenters/3)
    end
  end
end
