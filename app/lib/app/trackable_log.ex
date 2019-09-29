defmodule App.TrackableLog do
  use Ecto.Schema
  import Ecto.Changeset

  schema "trackablelogs" do
    field :name, :string
    field :notes, :string
    field :spent, :integer
    field :start, :naive_datetime
    field :stop, :naive_datetime
    field :trackable, :id

    timestamps()
  end

  @doc false
  def changeset(trackable_log, attrs) do
    trackable_log
    |> cast(attrs, [:name, :notes, :start, :stop, :spent])
    |> validate_required([:name, :notes, :start, :stop, :spent])
  end
end
