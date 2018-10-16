defmodule Server.Currency.Rate do 

  def get_latest_rates() do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get "https://api.exchangeratesapi.io/latest?base=BGN"
     Poison.decode! body
  end

  @spec get_rates_from_date(String.t)::Map.t
  def get_rates_from_date(date) do
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get "https://api.exchangeratesapi.io/#{date}?base=BGN"
     Poison.decode! body
  end

end