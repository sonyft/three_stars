defmodule ServerWeb.CourcesView do
  use ServerWeb, :view
  alias ServerWeb.CourcesView

  def render("index.json", %{cources: cources}) do
    %{data: render_many(cources, CourcesView, "cources.json")}
  end

  def render("show.json", %{cources: cources}) do
    %{data: render_one(cources, CourcesView, "cources.json")}
  end

  def render("cources.json", %{cources: cources}) do
    %{id: cources.id,
      cource: cources.cource,
      currencies_id: cources.currencies_id}
  end
end
