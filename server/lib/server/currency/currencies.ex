defmodule Server.Currency.Currencies do
  use Ecto.Schema
  import Ecto.Changeset


  schema "currencies" do
    field :code_name, :string
    field :name, :string

    has_many(:cources, Server.Currency.Cources)

    timestamps()
  end

  @doc false
  def changeset(currencies, attrs) do
    currencies
    |> cast(attrs, [:name, :code_name])
    |> validate_required([:name, :code_name])
  end
end
