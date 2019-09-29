defmodule App.Trackable do
  use Ecto.Schema
  import Ecto.Changeset

  schema "trackables" do
    field :name, :string
    field :notes, :string
    field :start, :naive_datetime

    timestamps()
  end

  @doc false
  def changeset(trackable, attrs) do
    trackable
    |> cast(attrs, [:name, :notes, :start])
    |> validate_required([:name, :notes, :start])
  end
end
