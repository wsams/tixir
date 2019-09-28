defmodule App.Repo.Migrations.CreateTrackables do
  use Ecto.Migration

  def change do
    create table(:trackables) do
      add :name, :string
      add :notes, :string
      add :start, :naive_datetime
      add :state, :integer

      timestamps()
    end

  end
end
