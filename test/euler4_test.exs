defmodule Euler4Test do
  use ExUnit.Case

  test "palindrom",
    do: assert Euler4.is_palindrome(9009)

  test "sample",
    do: assert Euler4.calc(99) == 9_009

  test "problem",
    do: assert Euler4.calc(999) == 906_609
end
