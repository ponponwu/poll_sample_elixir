defmodule PollSample.Polls.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias PollSample.Polls.Vote

  schema "users" do
    field :name, :string
    has_many(:votes, Vote)

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
