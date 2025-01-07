defmodule Euler2Test do
  use ExUnit.Case

  test "sample",
    do: assert Euler2.calc(100) == 2+8+34

  test "problem",
    do: assert Euler2.calc(4_000_000) == 4_613_732
end
