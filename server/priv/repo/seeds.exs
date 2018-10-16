# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Server.Repo.insert!(%Server.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

  alias Server.Repo

  alias Server.Currency.Cources
  alias Server.Currency.Currencies

    ############## Currencies #############
  currencies_params = %{name: "Български лев", code_name: "BGN"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Щатски долар", code_name: "USD"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Руска рубла", code_name: "RUB"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Британска лира", code_name: "GBP"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Евро", code_name: "EUR"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end


  ############## Cources #############
  cources_params = %{cource_buy: 1.99999, cource_sell: 2.3432, currencies_id: 1}

  %Cources{}
  |> Cources.changeset(cources_params)
  |> Repo.insert!()

  cources_params = %{cource_buy: 1.543, cource_sell: 1.3432, currencies_id: 2}

  %Cources{}
  |> Cources.changeset(cources_params)
  |> Repo.insert!()

  cources_params = %{cource_buy: 0.143, cource_sell: 0.3432, currencies_id: 3}

  %Cources{}
  |> Cources.changeset(cources_params)
  |> Repo.insert!()

  cources_params = %{cource_buy: 1.143, cource_sell: 1.5432, currencies_id: 4}

  %Cources{}
  |> Cources.changeset(cources_params)
  |> Repo.insert!()