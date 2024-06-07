defmodule MatchTesterTest do
  use ExUnit.Case
  doctest MatchTester

  test "greets the world" do
    assert MatchTester.hello() == :world
  end
end
