defmodule Euler5Test do
  use ExUnit.Case

  test "sample",
    do: assert Euler5.calc(10) == 2520

  test "problem",
    do: assert Euler5.calc(20) == 1111

end
