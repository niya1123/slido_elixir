defmodule Slido.Slido.Question do
  use Ecto.Schema
  import Ecto.Changeset


  schema "questions" do
    field :content, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:name, :content])
    |> validate_required([:name, :content])
  end
end
