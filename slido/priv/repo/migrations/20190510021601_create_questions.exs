defmodule Slido.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :name, :string
      add :question, :text

      timestamps()
    end

  end
end
