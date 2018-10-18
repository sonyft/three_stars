defmodule Server.Repo.Migrations.CreateCources do
  use Ecto.Migration

  def change do
    create table(:cources) do
      add :cource, :float
      add :currencies_id, references("currencies")

      timestamps()
    end

  end
end
