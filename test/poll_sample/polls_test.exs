defmodule PollSample.PollsTest do
  use PollSample.DataCase

  alias PollSample.Polls

  describe "polls" do
    alias PollSample.Polls.Poll

    import PollSample.PollsFixtures

    @invalid_attrs %{question: nil}

    test "list_polls/0 returns all polls" do
      poll = poll_fixture()
      assert Polls.list_polls() == [poll]
    end

    test "get_poll!/1 returns the poll with given id" do
      poll = poll_fixture()
      assert Polls.get_poll!(poll.id) == poll
    end

    test "create_poll/1 with valid data creates a poll" do
      valid_attrs = %{question: "some question"}

      assert {:ok, %Poll{} = poll} = Polls.create_poll(valid_attrs)
      assert poll.question == "some question"
    end

    test "create_poll/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_poll(@invalid_attrs)
    end

    test "update_poll/2 with valid data updates the poll" do
      poll = poll_fixture()
      update_attrs = %{question: "some updated question"}

      assert {:ok, %Poll{} = poll} = Polls.update_poll(poll, update_attrs)
      assert poll.question == "some updated question"
    end

    test "update_poll/2 with invalid data returns error changeset" do
      poll = poll_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_poll(poll, @invalid_attrs)
      assert poll == Polls.get_poll!(poll.id)
    end

    test "delete_poll/1 deletes the poll" do
      poll = poll_fixture()
      assert {:ok, %Poll{}} = Polls.delete_poll(poll)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_poll!(poll.id) end
    end

    test "change_poll/1 returns a poll changeset" do
      poll = poll_fixture()
      assert %Ecto.Changeset{} = Polls.change_poll(poll)
    end
  end

  describe "options" do
    alias PollSample.Polls.Option

    import PollSample.PollsFixtures

    @invalid_attrs %{value: nil}

    test "list_options/0 returns all options" do
      option = option_fixture()
      assert Polls.list_options() == [option]
    end

    test "get_option!/1 returns the option with given id" do
      option = option_fixture()
      assert Polls.get_option!(option.id) == option
    end

    test "create_option/1 with valid data creates a option" do
      valid_attrs = %{value: "some value"}

      assert {:ok, %Option{} = option} = Polls.create_option(valid_attrs)
      assert option.value == "some value"
    end

    test "create_option/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_option(@invalid_attrs)
    end

    test "update_option/2 with valid data updates the option" do
      option = option_fixture()
      update_attrs = %{value: "some updated value"}

      assert {:ok, %Option{} = option} = Polls.update_option(option, update_attrs)
      assert option.value == "some updated value"
    end

    test "update_option/2 with invalid data returns error changeset" do
      option = option_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_option(option, @invalid_attrs)
      assert option == Polls.get_option!(option.id)
    end

    test "delete_option/1 deletes the option" do
      option = option_fixture()
      assert {:ok, %Option{}} = Polls.delete_option(option)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_option!(option.id) end
    end

    test "change_option/1 returns a option changeset" do
      option = option_fixture()
      assert %Ecto.Changeset{} = Polls.change_option(option)
    end
  end

  describe "votes" do
    alias PollSample.Polls.Vote

    import PollSample.PollsFixtures

    @invalid_attrs %{}

    test "list_votes/0 returns all votes" do
      vote = vote_fixture()
      assert Polls.list_votes() == [vote]
    end

    test "get_vote!/1 returns the vote with given id" do
      vote = vote_fixture()
      assert Polls.get_vote!(vote.id) == vote
    end

    test "create_vote/1 with valid data creates a vote" do
      valid_attrs = %{}

      assert {:ok, %Vote{} = vote} = Polls.create_vote(valid_attrs)
    end

    test "create_vote/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_vote(@invalid_attrs)
    end

    test "update_vote/2 with valid data updates the vote" do
      vote = vote_fixture()
      update_attrs = %{}

      assert {:ok, %Vote{} = vote} = Polls.update_vote(vote, update_attrs)
    end

    test "update_vote/2 with invalid data returns error changeset" do
      vote = vote_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_vote(vote, @invalid_attrs)
      assert vote == Polls.get_vote!(vote.id)
    end

    test "delete_vote/1 deletes the vote" do
      vote = vote_fixture()
      assert {:ok, %Vote{}} = Polls.delete_vote(vote)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_vote!(vote.id) end
    end

    test "change_vote/1 returns a vote changeset" do
      vote = vote_fixture()
      assert %Ecto.Changeset{} = Polls.change_vote(vote)
    end
  end

  describe "users" do
    alias PollSample.Polls.User

    import PollSample.PollsFixtures

    @invalid_attrs %{name: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Polls.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Polls.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %User{} = user} = Polls.create_user(valid_attrs)
      assert user.name == "some name"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %User{} = user} = Polls.update_user(user, update_attrs)
      assert user.name == "some updated name"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_user(user, @invalid_attrs)
      assert user == Polls.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Polls.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Polls.change_user(user)
    end
  end
end
