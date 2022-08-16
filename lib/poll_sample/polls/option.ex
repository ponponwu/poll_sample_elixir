defmodule PollSample.Polls.Option do
  use Ecto.Schema
  import Ecto.Changeset

  alias PollSample.Polls.Poll

  schema "options" do
    field :value, :string
    belongs_to(:poll, Poll)

    timestamps()
  end

  @doc false
  def changeset(option, attrs) do
    option
    |> cast(attrs, [:value])
    |> validate_required([:value])
    |> assoc_constraint(:poll)
  end
end
