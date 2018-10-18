defmodule Server.Currency.Cources do
  use Ecto.Schema
  import Ecto.Changeset


  schema "cources" do
    belongs_to(:currencies, Server.Currency.Currencies)
    field :cource, :float

    timestamps()
  end

  @doc false
  def changeset(cources, attrs) do
    cources
    |> cast(attrs, [:cource, :currencies_id])
    |> validate_required([:cource, :currencies_id])
  end
end
