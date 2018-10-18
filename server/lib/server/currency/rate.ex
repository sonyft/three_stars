defmodule Server.Currency.Rate do 

  alias Server.Currency

  def get_latest_rates() do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get "https://api.exchangeratesapi.io/latest?base=BGN"
     Poison.decode! body
  end

  @spec get_rates_for_other_base(String.t)::Map.t
  def get_rates_for_other_base(base_currency) do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get "https://api.exchangeratesapi.io/latest?base=#{base_currency}"
     Poison.decode! body
  end

### date -> (2018-10-15)   //return rate for this date
  @spec get_rates_from_date(String.t)::Map.t
  def get_rates_from_date(date) do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get "https://api.exchangeratesapi.io/#{date}?base=BGN"
     Poison.decode! body
  end

### currency -> code_name   //return rate for this code_name/s
   @spec get_rates_for_currencies(String.t)::Map.t
  def get_rates_for_currencies(currency1) do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get "https://api.exchangeratesapi.io/latest?base=BGN&symbols=#{currency1}"
     Poison.decode! body
  end

### From date, To date   //return rate for this period
  @spec get_rates_from_to(String.t, String.t)::Map.t
  def get_rates_from_to(date1, date2) do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get "https://api.exchangeratesapi.io/history?start_at=#{date1}&end_at=#{date2}&base=BGN"
     Poison.decode! body
  end

### From date, To date, code_name/s  //return rate for this period for currency/ies
  @spec get_rates_from_to_currency(String.t, String.t, String.t)::Map.t
  def get_rates_from_to_currency(date1, date2, currencies) do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get "https://api.exchangeratesapi.io/history?start_at=#{date1}&end_at=#{date2}&base=BGN&symbols=#{currencies}"
     Poison.decode! body
  end

  def add_cources_in_table() do
    %{"rates" => rates} = Server.Currency.Rate.get_latest_rates

    for  {k, v}  <-  rates  do
     IO.puts "#{k} --> #{v}"
     
     %Server.Currency.Currencies{id: id} = Currency.get_currencies_by!(k)

     Currency.create_cources(%{currencies_id: id, cource: v})

    end

    #%Server.Currency.Currencies{id: id} = Server.Currency.get_currencies_by! "BGN"
  end


end