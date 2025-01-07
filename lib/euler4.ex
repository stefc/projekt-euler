defmodule Euler4 do
  @moduledoc """
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
"""

  def calc(n) do
     start = if n > 99, do: 100, else: 10
     range_1 = start..n
     range_2 = start..n
     Enum.max for n <- range_1, m <- range_2, is_palindrome(n * m), do: n * m
  end

  def is_palindrome(n),
    do: n == reverse(n);

  defp reverse(n),
    do: reverse(0,n)

  defp reverse(reversed, n),
    do:
      if( n > 0,
        do: reverse((10 * reversed) + rem(n,10), div(n,10)),
        else: reversed)
end
