defmodule Remedy.Accounts do
  alias Remedy.Accounts.Presenter

  def list_all() do
    Remedy.Repo.all(Presenter)
  end
end
