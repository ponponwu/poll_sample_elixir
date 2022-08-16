defmodule PollSample.PollsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PollSample.Polls` context.
  """

  @doc """
  Generate a poll.
  """
  def poll_fixture(attrs \\ %{}) do
    {:ok, poll} =
      attrs
      |> Enum.into(%{
        question: "some question"
      })
      |> PollSample.Polls.create_poll()

    poll
  end

  @doc """
  Generate a option.
  """
  def option_fixture(attrs \\ %{}) do
    {:ok, option} =
      attrs
      |> Enum.into(%{
        value: "some value"
      })
      |> PollSample.Polls.create_option()

    option
  end

  @doc """
  Generate a vote.
  """
  def vote_fixture(attrs \\ %{}) do
    {:ok, vote} =
      attrs
      |> Enum.into(%{

      })
      |> PollSample.Polls.create_vote()

    vote
  end

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> PollSample.Polls.create_user()

    user
  end
end
