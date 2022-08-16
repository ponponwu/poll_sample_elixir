defmodule PollSample.Repo do
  use Ecto.Repo,
    otp_app: :poll_sample,
    adapter: Ecto.Adapters.Postgres
end
