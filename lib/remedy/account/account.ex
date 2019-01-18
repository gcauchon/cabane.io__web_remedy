defmodule Remedy.Account do
  alias Remedy.Account.Presenter

  @doc """
  List every presenter of the first CABANE.io edition.
  """
  def list_all() do
    Remedy.Repo.all(Presenter)
  end

  @doc """
  Find a presenter by its UUID
  """
  def find(uuid) do
    Remedy.Repo.get_by(Presenter, id: uuid)
  end
end
