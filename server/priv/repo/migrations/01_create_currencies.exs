defmodule Server.Repo.Migrations.CreateCurrencies do
  use Ecto.Migration

  def change do
    create table(:currencies) do
      add :name, :string
      add :code_name, :string

      timestamps()
    end

  end
end
