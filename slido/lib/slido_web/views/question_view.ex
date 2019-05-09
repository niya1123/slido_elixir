defmodule SlidoWeb.QuestionView do
  use SlidoWeb, :view
  alias SlidoWeb.QuestionView

  def render("index.json", %{questions: questions}) do
    %{data: render_many(questions, QuestionView, "question.json")}
  end

  def render("show.json", %{question: question}) do
    %{data: render_one(question, QuestionView, "question.json")}
  end

  def render("question.json", %{question: question}) do
    %{id: question.id,
      name: question.name,
      content: question.content}
  end
end
