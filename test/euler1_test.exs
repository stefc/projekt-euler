defmodule Euler1Test do
  use ExUnit.Case

  test "sample",
    do: assert Euler1.calc(10) == 23

  test "problem",
    do: assert Euler1.calc(1000) == 233_168
end
