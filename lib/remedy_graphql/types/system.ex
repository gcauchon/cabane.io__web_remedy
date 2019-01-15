defmodule Remedy.GraphQL.Types.System do
  use Absinthe.Schema.Notation

  @desc "A mutation result"
  object :mutation_result do
    field(:successful, :boolean)
  end
end
