defmodule Remedy.GraphQL.Resolvers.Account do
  alias Remedy.Account

  def presenters(_, %{id: id}, _) when is_bitstring(id) do
    {:ok, Account.find(id)}
  end

  def presenters(_, _, _) do
    {:ok, Account.list_all()}
  end
end
