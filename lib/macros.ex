defmodule MatchTester.Macros do
  defmacro match?(pattern, expr) do
    success =
      quote do
        unquote(pattern) -> true
      end

    failure =
      quote generated: true do
        _ -> false
      end

    {:case, [], [expr, [do: success ++ failure]]}
  end
end
