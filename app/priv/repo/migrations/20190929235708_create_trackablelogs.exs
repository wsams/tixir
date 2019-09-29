defmodule App.Repo.Migrations.CreateTrackablelogs do
  use Ecto.Migration

  def change do
    create table(:trackablelogs) do
      add :name, :string
      add :notes, :string
      add :start, :naive_datetime
      add :stop, :naive_datetime
      add :spent, :integer
      add :trackable, references(:trackables, on_delete: :nothing)

      timestamps()
    end

    create index(:trackablelogs, [:trackable])
  end
end
