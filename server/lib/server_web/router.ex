defmodule ServerWeb.Router do
  use ServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ServerWeb do
    pipe_through :api

    resources "/currencies", CurrenciesController, except: [:new, :edit]
    resources "/cources", CourcesController, except: [:new, :edit]

    #options   "/currencies", CurrenciesController, :options

    #resources("/currencies", CurrenciesController)
  end
end
