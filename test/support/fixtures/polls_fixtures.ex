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
end
