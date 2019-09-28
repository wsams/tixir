defmodule App.Trackable do
  use Ecto.Schema
  import Ecto.Changeset

  schema "trackables" do
    field :name, :string
    field :notes, :string
    field :start, :naive_datetime
    field :state, :integer

    timestamps()
  end

  @doc false
  def changeset(trackable, attrs) do
    trackable
    |> cast(attrs, [:name, :notes, :start, :state])
    |> validate_required([:name, :notes, :start, :state])
  end
end
