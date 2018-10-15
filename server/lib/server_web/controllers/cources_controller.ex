defmodule ServerWeb.CourcesController do
  use ServerWeb, :controller

  alias Server.Currency
  alias Server.Currency.Cources

  action_fallback ServerWeb.FallbackController

  def index(conn, _params) do
    cources = Currency.list_cources()
    render(conn, "index.json", cources: cources)
  end

  def create(conn, %{"cources" => cources_params}) do
    with {:ok, %Cources{} = cources} <- Currency.create_cources(cources_params) do
      conn
      |> put_status(:created)
     # |> put_resp_header("location", cources_path(conn, :show, cources))
      |> render("show.json", cources: cources)
    end
  end

  def show(conn, %{"id" => id}) do
    cources = Currency.get_cources!(id)
    render(conn, "show.json", cources: cources)
  end

  def update(conn, %{"id" => id, "cources" => cources_params}) do
    cources = Currency.get_cources!(id)

    with {:ok, %Cources{} = cources} <- Currency.update_cources(cources, cources_params) do
      render(conn, "show.json", cources: cources)
    end
  end

  def delete(conn, %{"id" => id}) do
    cources = Currency.get_cources!(id)
    with {:ok, %Cources{}} <- Currency.delete_cources(cources) do
      send_resp(conn, :no_content, "")
    end
  end
end
