defmodule Server.Currency do
  @moduledoc """
  The Currency context.
  """

  import Ecto.Query, warn: false
  alias Server.Repo

  alias Server.Currency.Currencies

  @doc """
  Returns the list of currencies.

  ## Examples

      iex> list_currencies()
      [%Currencies{}, ...]

  """
  def list_currencies do
    Repo.all(Currencies)
  end

  @doc """
  Gets a single currencies.

  Raises `Ecto.NoResultsError` if the Currencies does not exist.

  ## Examples

      iex> get_currencies!(123)
      %Currencies{}

      iex> get_currencies!(456)
      ** (Ecto.NoResultsError)

  """
  def get_currencies!(id), do: Repo.get!(Currencies, id)

   @doc """
  Gets a single currencies.

  Raises `Ecto.NoResultsError` if the Currencies does not exist.

  ## Examples

      iex> get_currencies!(123)
      %Currencies{}

      iex> get_currencies!(456)
      ** (Ecto.NoResultsError)

  """
  def get_currencies_by!(code_name), do: Repo.get_by!(Currencies, code_name: code_name)

  @doc """
  Creates a currencies.

  ## Examples

      iex> create_currencies(%{field: value})
      {:ok, %Currencies{}}

      iex> create_currencies(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_currencies(attrs \\ %{}) do
    %Currencies{}
    |> Currencies.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a currencies.

  ## Examples

      iex> update_currencies(currencies, %{field: new_value})
      {:ok, %Currencies{}}

      iex> update_currencies(currencies, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_currencies(%Currencies{} = currencies, attrs) do
    currencies
    |> Currencies.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Currencies.

  ## Examples

      iex> delete_currencies(currencies)
      {:ok, %Currencies{}}

      iex> delete_currencies(currencies)
      {:error, %Ecto.Changeset{}}

  """
  def delete_currencies(%Currencies{} = currencies) do
    Repo.delete(currencies)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking currencies changes.

  ## Examples

      iex> change_currencies(currencies)
      %Ecto.Changeset{source: %Currencies{}}

  """
  def change_currencies(%Currencies{} = currencies) do
    Currencies.changeset(currencies, %{})
  end

  alias Server.Currency.Cources

  @doc """
  Returns the list of cources.

  ## Examples

      iex> list_cources()
      [%Cources{}, ...]

  """
  def list_cources do
    Repo.all(Cources)
  end

  @doc """
  Gets a single cources.

  Raises `Ecto.NoResultsError` if the Cources does not exist.

  ## Examples

      iex> get_cources!(123)
      %Cources{}

      iex> get_cources!(456)
      ** (Ecto.NoResultsError)

  """
  def get_cources!(id), do: Repo.get!(Cources, id)

  @doc """
  Creates a cources.

  ## Examples

      iex> create_cources(%{field: value})
      {:ok, %Cources{}}

      iex> create_cources(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_cources(attrs \\ %{}) do
    %Cources{}
    |> Cources.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a cources.

  ## Examples

      iex> update_cources(cources, %{field: new_value})
      {:ok, %Cources{}}

      iex> update_cources(cources, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_cources(%Cources{} = cources, attrs) do
    cources
    |> Cources.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Cources.

  ## Examples

      iex> delete_cources(cources)
      {:ok, %Cources{}}

      iex> delete_cources(cources)
      {:error, %Ecto.Changeset{}}

  """
  def delete_cources(%Cources{} = cources) do
    Repo.delete(cources)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking cources changes.

  ## Examples

      iex> change_cources(cources)
      %Ecto.Changeset{source: %Cources{}}

  """
  def change_cources(%Cources{} = cources) do
    Cources.changeset(cources, %{})
  end
end
