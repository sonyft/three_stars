defmodule ServerWeb.CurrenciesControllerTest do
  use ServerWeb.ConnCase

  alias Server.Currency
  alias Server.Currency.Currencies

  @create_attrs %{code_name: "some code_name", name: "some name"}
  @update_attrs %{code_name: "some updated code_name", name: "some updated name"}
  @invalid_attrs %{code_name: nil, name: nil}

  def fixture(:currencies) do
    {:ok, currencies} = Currency.create_currencies(@create_attrs)
    currencies
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all currencies", %{conn: conn} do
      conn = get conn, currencies_path(conn, :index)
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create currencies" do
    test "renders currencies when data is valid", %{conn: conn} do
      conn = post conn, currencies_path(conn, :create), currencies: @create_attrs
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get conn, currencies_path(conn, :show, id)
      assert json_response(conn, 200)["data"] == %{
        "id" => id,
        "code_name" => "some code_name",
        "name" => "some name"}
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post conn, currencies_path(conn, :create), currencies: @invalid_attrs
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update currencies" do
    setup [:create_currencies]

    test "renders currencies when data is valid", %{conn: conn, currencies: %Currencies{id: id} = currencies} do
      conn = put conn, currencies_path(conn, :update, currencies), currencies: @update_attrs
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get conn, currencies_path(conn, :show, id)
      assert json_response(conn, 200)["data"] == %{
        "id" => id,
        "code_name" => "some updated code_name",
        "name" => "some updated name"}
    end

    test "renders errors when data is invalid", %{conn: conn, currencies: currencies} do
      conn = put conn, currencies_path(conn, :update, currencies), currencies: @invalid_attrs
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete currencies" do
    setup [:create_currencies]

    test "deletes chosen currencies", %{conn: conn, currencies: currencies} do
      conn = delete conn, currencies_path(conn, :delete, currencies)
      assert response(conn, 204)
      assert_error_sent 404, fn ->
        get conn, currencies_path(conn, :show, currencies)
      end
    end
  end

  defp create_currencies(_) do
    currencies = fixture(:currencies)
    {:ok, currencies: currencies}
  end
end
