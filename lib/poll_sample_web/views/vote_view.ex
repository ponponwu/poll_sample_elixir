defmodule PollSampleWeb.VoteView do
  use PollSampleWeb, :view
  alias PollSampleWeb.VoteView

  def render("index.json", %{votes: votes}) do
    %{data: render_many(votes, VoteView, "vote.json")}
  end

  def render("show.json", %{vote: vote}) do
    %{data: render_one(vote, VoteView, "vote.json")}
  end

  def render("vote.json", %{vote: vote}) do
    %{
      id: vote.id
    }
  end
end
