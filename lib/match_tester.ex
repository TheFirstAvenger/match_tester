defmodule MatchTester do
  @moduledoc """
  Documentation for `MatchTester`.
  """

  require MatchTester.Macros

  @doc """
  Hello world.

  ## Examples

      iex> MatchTester.hello()
      :world

  """
  def hello do
    :world

    IO.puts(Kernel.match?("abc" <> _, "def"))
    IO.puts(Kernel.match?("abc" <> _, "abc"))
    IO.puts(MatchTester.Macros.match?("abc" <> _, "def"))
    IO.puts(MatchTester.Macros.match?("abc" <> _, "abc"))
  end
end
