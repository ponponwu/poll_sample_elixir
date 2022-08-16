defmodule PollSample.Repo.Migrations.AddRelationsOnVote do
  use Ecto.Migration

  def change do
    alter table(:votes) do
      add :user_id, references(:users, on_delete: :delete_all), null: false
    end
  end
end
