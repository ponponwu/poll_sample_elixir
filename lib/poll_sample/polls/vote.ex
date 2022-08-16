defmodule PollSample.Polls.Vote do
  use Ecto.Schema
  import Ecto.Changeset

  alias PollSample.Polls.{Option, User}

  schema "votes" do

    belongs_to(:option, Option)
    belongs_to(:user, User)

    timestamps()
  end

  @doc false
  def changeset(vote, attrs) do
    vote
    |> cast(attrs, [:user_id, :option_id])
    |> validate_required([:user_id, :option_id])
    |> unique_constraint([:user_id, :option_id])
    |> assoc_constraint(:option)
    |> assoc_constraint(:user)
  end
end
