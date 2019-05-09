defmodule Slido.Repo.Migrations.CreateQuestions do
  use Ecto.Migration

  def change do
    create table(:questions) do
      add :name, :string
      add :content, :text

      timestamps()
    end

  end
end
