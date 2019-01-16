defmodule Remedy.Repo.Migrations.CreatePresenters do
  use Ecto.Migration

  def change do
    create table(:presenters) do
      add(:name, :string)
      add(:handle, :string, size: 48)
      add(:company, :string, size: 24)
      add(:title, :string)

      timestamps()
    end

    create(index(:presenters, :handle, unique: true))
  end
end
