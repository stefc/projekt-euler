defmodule Euler5Test do
  use ExUnit.Case

  test "sample",
    do: assert(Euler5.calc(10) == 2_520)

  test "problem",
    do: assert(Euler5.calc(20) == 232_792_560)

  @tag skip: true
  @tag timeout: :infinity
  test "problem-heiko",
    do: assert(Euler5.solve() == 232_792_560)
end
