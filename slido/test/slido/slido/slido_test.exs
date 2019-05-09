defmodule Slido.SlidoTest do
  use Slido.DataCase

  alias Slido.Slido

  describe "questions" do
    alias Slido.Slido.Question

    @valid_attrs %{name: "some name", question: "some question"}
    @update_attrs %{name: "some updated name", question: "some updated question"}
    @invalid_attrs %{name: nil, question: nil}

    def question_fixture(attrs \\ %{}) do
      {:ok, question} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Slido.create_question()

      question
    end

    test "list_questions/0 returns all questions" do
      question = question_fixture()
      assert Slido.list_questions() == [question]
    end

    test "get_question!/1 returns the question with given id" do
      question = question_fixture()
      assert Slido.get_question!(question.id) == question
    end

    test "create_question/1 with valid data creates a question" do
      assert {:ok, %Question{} = question} = Slido.create_question(@valid_attrs)
      assert question.name == "some name"
      assert question.question == "some question"
    end

    test "create_question/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Slido.create_question(@invalid_attrs)
    end

    test "update_question/2 with valid data updates the question" do
      question = question_fixture()
      assert {:ok, question} = Slido.update_question(question, @update_attrs)
      assert %Question{} = question
      assert question.name == "some updated name"
      assert question.question == "some updated question"
    end

    test "update_question/2 with invalid data returns error changeset" do
      question = question_fixture()
      assert {:error, %Ecto.Changeset{}} = Slido.update_question(question, @invalid_attrs)
      assert question == Slido.get_question!(question.id)
    end

    test "delete_question/1 deletes the question" do
      question = question_fixture()
      assert {:ok, %Question{}} = Slido.delete_question(question)
      assert_raise Ecto.NoResultsError, fn -> Slido.get_question!(question.id) end
    end

    test "change_question/1 returns a question changeset" do
      question = question_fixture()
      assert %Ecto.Changeset{} = Slido.change_question(question)
    end
  end
end
