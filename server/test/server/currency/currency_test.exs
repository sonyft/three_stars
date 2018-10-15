defmodule Server.CurrencyTest do
  use Server.DataCase

  alias Server.Currency

  describe "currencies" do
    alias Server.Currency.Currencies

    @valid_attrs %{code_name: "some code_name", name: "some name"}
    @update_attrs %{code_name: "some updated code_name", name: "some updated name"}
    @invalid_attrs %{code_name: nil, name: nil}

    def currencies_fixture(attrs \\ %{}) do
      {:ok, currencies} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Currency.create_currencies()

      currencies
    end

    test "list_currencies/0 returns all currencies" do
      currencies = currencies_fixture()
      assert Currency.list_currencies() == [currencies]
    end

    test "get_currencies!/1 returns the currencies with given id" do
      currencies = currencies_fixture()
      assert Currency.get_currencies!(currencies.id) == currencies
    end

    test "create_currencies/1 with valid data creates a currencies" do
      assert {:ok, %Currencies{} = currencies} = Currency.create_currencies(@valid_attrs)
      assert currencies.code_name == "some code_name"
      assert currencies.name == "some name"
    end

    test "create_currencies/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Currency.create_currencies(@invalid_attrs)
    end

    test "update_currencies/2 with valid data updates the currencies" do
      currencies = currencies_fixture()
      assert {:ok, currencies} = Currency.update_currencies(currencies, @update_attrs)
      assert %Currencies{} = currencies
      assert currencies.code_name == "some updated code_name"
      assert currencies.name == "some updated name"
    end

    test "update_currencies/2 with invalid data returns error changeset" do
      currencies = currencies_fixture()
      assert {:error, %Ecto.Changeset{}} = Currency.update_currencies(currencies, @invalid_attrs)
      assert currencies == Currency.get_currencies!(currencies.id)
    end

    test "delete_currencies/1 deletes the currencies" do
      currencies = currencies_fixture()
      assert {:ok, %Currencies{}} = Currency.delete_currencies(currencies)
      assert_raise Ecto.NoResultsError, fn -> Currency.get_currencies!(currencies.id) end
    end

    test "change_currencies/1 returns a currencies changeset" do
      currencies = currencies_fixture()
      assert %Ecto.Changeset{} = Currency.change_currencies(currencies)
    end
  end

  describe "cources" do
    alias Server.Currency.Cources

    @valid_attrs %{cource_buy: 120.5, cource_sell: 120.5}
    @update_attrs %{cource_buy: 456.7, cource_sell: 456.7}
    @invalid_attrs %{cource_buy: nil, cource_sell: nil}

    def cources_fixture(attrs \\ %{}) do
      {:ok, cources} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Currency.create_cources()

      cources
    end

    test "list_cources/0 returns all cources" do
      cources = cources_fixture()
      assert Currency.list_cources() == [cources]
    end

    test "get_cources!/1 returns the cources with given id" do
      cources = cources_fixture()
      assert Currency.get_cources!(cources.id) == cources
    end

    test "create_cources/1 with valid data creates a cources" do
      assert {:ok, %Cources{} = cources} = Currency.create_cources(@valid_attrs)
      assert cources.cource_buy == 120.5
      assert cources.cource_sell == 120.5
    end

    test "create_cources/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Currency.create_cources(@invalid_attrs)
    end

    test "update_cources/2 with valid data updates the cources" do
      cources = cources_fixture()
      assert {:ok, cources} = Currency.update_cources(cources, @update_attrs)
      assert %Cources{} = cources
      assert cources.cource_buy == 456.7
      assert cources.cource_sell == 456.7
    end

    test "update_cources/2 with invalid data returns error changeset" do
      cources = cources_fixture()
      assert {:error, %Ecto.Changeset{}} = Currency.update_cources(cources, @invalid_attrs)
      assert cources == Currency.get_cources!(cources.id)
    end

    test "delete_cources/1 deletes the cources" do
      cources = cources_fixture()
      assert {:ok, %Cources{}} = Currency.delete_cources(cources)
      assert_raise Ecto.NoResultsError, fn -> Currency.get_cources!(cources.id) end
    end

    test "change_cources/1 returns a cources changeset" do
      cources = cources_fixture()
      assert %Ecto.Changeset{} = Currency.change_cources(cources)
    end
  end
end
