defmodule Euler5 do
  @moduledoc """
  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20 ?
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

    defp ist_teilbar(a, b),
      do: rem(a,b) == 0

    defp product(a, b),
      do: a * b

    defp power(b,a),
      do: trunc(a ** b)


      #------------------------------------ Heiko ---------------

      def solve() do
        Stream.iterate(2 * 3 * 5 * 7 * 9 * 11 * 13 * 17 * 19, fn n -> n + 1 end)
        |> Stream.filter(&dividable?/1)
        |> Enum.take(1)
        |> hd()
      end

      defp dividable?(n) do
        Enum.all?(2..21, fn x ->
          rem(n, x) == 0
        end)
      end
end
