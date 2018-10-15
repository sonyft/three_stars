defmodule Server.Currency.Cources do
  use Ecto.Schema
  import Ecto.Changeset


  schema "cources" do
    field :cource_buy, :float
    field :cource_sell, :float

    timestamps()
  end

  @doc false
  def changeset(cources, attrs) do
    cources
    |> cast(attrs, [:cource_sell, :cource_buy])
    |> validate_required([:cource_sell, :cource_buy])
  end
end
