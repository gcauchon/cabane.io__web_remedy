defmodule Remedy.Accounts.Presenter do
  use Ecto.Schema

  schema "presenters" do
    field(:name, :string)
    field(:handle, :string)
    field(:company, :string)
    field(:title, :string)

    timestamps()
  end
end
