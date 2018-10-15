defmodule ServerWeb.CurrenciesController do
  use ServerWeb, :controller

  alias Server.Currency
  alias Server.Currency.Currencies

  action_fallback ServerWeb.FallbackController

  def index(conn, _params) do
    currencies = Currency.list_currencies()
    render(conn, "index.json", currencies: currencies)
  end

  def create(conn, %{"currencies" => currencies_params}) do
    with {:ok, %Currencies{} = currencies} <- Currency.create_currencies(currencies_params) do
      conn
      |> put_status(:created)
     # |> put_resp_header("location", currencies_path(conn, :show, currencies))
      |> render("show.json", currencies: currencies)
    end
  end

  def show(conn, %{"id" => id}) do
    currencies = Currency.get_currencies!(id)
    render(conn, "show.json", currencies: currencies)
  end

  def update(conn, %{"id" => id, "currencies" => currencies_params}) do
    currencies = Currency.get_currencies!(id)

    with {:ok, %Currencies{} = currencies} <- Currency.update_currencies(currencies, currencies_params) do
      render(conn, "show.json", currencies: currencies)
    end
  end

  def delete(conn, %{"id" => id}) do
    currencies = Currency.get_currencies!(id)
    with {:ok, %Currencies{}} <- Currency.delete_currencies(currencies) do
      send_resp(conn, :no_content, "")
    end
  end
end
