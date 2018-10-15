defmodule ServerWeb.CourcesControllerTest do
  use ServerWeb.ConnCase

  alias Server.Currency
  alias Server.Currency.Cources

  @create_attrs %{cource_buy: 120.5, cource_sell: 120.5}
  @update_attrs %{cource_buy: 456.7, cource_sell: 456.7}
  @invalid_attrs %{cource_buy: nil, cource_sell: nil}

  def fixture(:cources) do
    {:ok, cources} = Currency.create_cources(@create_attrs)
    cources
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all cources", %{conn: conn} do
      conn = get conn, cources_path(conn, :index)
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create cources" do
    test "renders cources when data is valid", %{conn: conn} do
      conn = post conn, cources_path(conn, :create), cources: @create_attrs
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get conn, cources_path(conn, :show, id)
      assert json_response(conn, 200)["data"] == %{
        "id" => id,
        "cource_buy" => 120.5,
        "cource_sell" => 120.5}
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post conn, cources_path(conn, :create), cources: @invalid_attrs
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update cources" do
    setup [:create_cources]

    test "renders cources when data is valid", %{conn: conn, cources: %Cources{id: id} = cources} do
      conn = put conn, cources_path(conn, :update, cources), cources: @update_attrs
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get conn, cources_path(conn, :show, id)
      assert json_response(conn, 200)["data"] == %{
        "id" => id,
        "cource_buy" => 456.7,
        "cource_sell" => 456.7}
    end

    test "renders errors when data is invalid", %{conn: conn, cources: cources} do
      conn = put conn, cources_path(conn, :update, cources), cources: @invalid_attrs
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete cources" do
    setup [:create_cources]

    test "deletes chosen cources", %{conn: conn, cources: cources} do
      conn = delete conn, cources_path(conn, :delete, cources)
      assert response(conn, 204)
      assert_error_sent 404, fn ->
        get conn, cources_path(conn, :show, cources)
      end
    end
  end

  defp create_cources(_) do
    cources = fixture(:cources)
    {:ok, cources: cources}
  end
end
