defmodule Remedy.Repo.Migrations.CreatePresenters do
  use Ecto.Migration

  def change do
    create table(:presenters, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:name, :string)
      add(:handle, :string, size: 48)
      add(:company, :string, size: 24)
      add(:title, :string)

      timestamps()
    end

    unique_index(:presenters, :handle)
  end
end
