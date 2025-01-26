defmodule Euler5Test do
  use ExUnit.Case

  test "count_div",
    do: assert Euler5.count_div(10, 2) == 5

  test "sample",
    do: assert Euler5.calc(10) == 2520

  test "problem",
    do: assert Euler5.calc(20) == 232792560

end
