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
  currencies_params = %{name: "Австралийски долар", code_name: "AUD"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Чешка крона", code_name: "CZK"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Индонезийска рупия", code_name: "IDR"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Унгарски форинт", code_name: "HUF"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Индийска рупия", code_name: "INR"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Датска крона", code_name: "DKK"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Норвежка крона", code_name: "NOK"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Филипинско песо", code_name: "PHP"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Шведска крона", code_name: "SEK"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Бразилски реал", code_name: "BRL"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Мексиканско песо", code_name: "MXN"}

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

  currencies_params = %{name: "Корейски вон", code_name: "KRW"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Малайзийски рингит", code_name: "MYR"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Китайски ренминби юан", code_name: "CNY"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Сингапурски долар", code_name: "SGD"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Български лев", code_name: "BGN"}

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

  currencies_params = %{name: "Турска лира", code_name: "TRY"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Южноафрикански ранд", code_name: "ZAR"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Швейцарски франк", code_name: "CHF"}

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

  currencies_params = %{name: "Японска йена", code_name: "JPY"}

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

  currencies_params = %{name: "Полска злота", code_name: "PLN"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Тайландски бат", code_name: "THB"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Румънска лея", code_name: "RON"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Исландска крона", code_name: "ISK"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Израелски шекел", code_name: "ILS"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Канадски долар", code_name: "CAD"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Хонгконгски долар", code_name: "HKD"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Новозеландски долар", code_name: "NZD"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  currencies_params = %{name: "Хърватска куна", code_name: "HRK"}

  unless Repo.get_by(Currencies, name: currencies_params[:name]) do
    %Currencies{}
    |> Currencies.changeset(currencies_params)
    |> Repo.insert!()
  end

  

  


  ############## Cources #############
  # cources_params = %{cource: 1.99999, currencies_id: 1}

  # %Cources{}
  # |> Cources.changeset(cources_params)
  # |> Repo.insert!()

  # cources_params = %{cource: 1.543, currencies_id: 2}

  # %Cources{}
  # |> Cources.changeset(cources_params)
  # |> Repo.insert!()

  # cources_params = %{cource: 0.143, currencies_id: 3}

  # %Cources{}
  # |> Cources.changeset(cources_params)
  # |> Repo.insert!()

  # cources_params = %{cource: 1.143, currencies_id: 4}

  # %Cources{}
  # |> Cources.changeset(cources_params)
  # |> Repo.insert!()