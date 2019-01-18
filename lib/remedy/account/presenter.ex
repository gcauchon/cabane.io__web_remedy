defmodule Remedy.Account.Presenter do
  use Ecto.Schema

  @primary_key {:id, Ecto.UUID, autogenerate: true}
  schema("presenters") do
    field(:name, :string)
    field(:handle, :string)
    field(:company, :string)
    field(:title, :string)

    timestamps()
  end
end
