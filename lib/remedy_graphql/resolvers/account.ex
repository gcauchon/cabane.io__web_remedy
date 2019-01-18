defmodule Remedy.GraphQL.Resolvers.Account do
  alias Remedy.Account

  def presenters(_parent, %{id: id}, _resolution) when is_bitstring(id) do
    {:ok, Account.find(id)}
  end

  def presenters(_parent, _arguments, _resolution) do
    {:ok, Account.list_all()}
  end
end
