defmodule ArkEcosystem.Client.API.Two.Block do
  @moduledoc """
  Documentation for ArkEcosystem.Client.API.One.Block
  """

  import ArkEcosystem.Client

  @spec list(Tesla.Client.t(), List.t()) :: ArkEcosystem.Client.response()
  def list(client, parameters \\ []) do
    client |> get("blocks", parameters)
  end

  @spec show(Tesla.Client.t(), String.t()) :: ArkEcosystem.Client.response()
  def show(client, id) do
    client |> get("blocks/#{id}")
  end

  @spec transactions(Tesla.Client.t(), String.t(), List.t()) :: ArkEcosystem.Client.response()
  def transactions(client, id, parameters \\ []) do
    client |> get("blocks/#{id}/transactions", parameters)
  end

  @spec search(Tesla.Client.t(), List.t()) :: ArkEcosystem.Client.response()
  def search(client, parameters) do
    client |> post("blocks/search", parameters)
  end
end
