defmodule ServerWeb.CurrenciesView do
  use ServerWeb, :view
  alias ServerWeb.CurrenciesView

  def render("index.json", %{currencies: currencies}) do
    %{data: render_many(currencies, CurrenciesView, "currencies.json")}
  end

  def render("show.json", %{currencies: currencies}) do
    %{data: render_one(currencies, CurrenciesView, "currencies.json")}
  end

  def render("currencies.json", %{currencies: currencies}) do
    %{id: currencies.id,
      name: currencies.name,
      code_name: currencies.code_name}
  end
end
