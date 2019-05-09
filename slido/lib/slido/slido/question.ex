defmodule Slido.Slido.Question do
  use Ecto.Schema
  import Ecto.Changeset


  schema "questions" do
    field :name, :string
    field :question, :string

    timestamps()
  end

  @doc false
  def changeset(question, attrs) do
    question
    |> cast(attrs, [:name, :question])
    |> validate_required([:name, :question])
  end
end
