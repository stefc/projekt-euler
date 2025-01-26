defmodule Euler5 do
  @moduledoc """
    2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20 ?
  """
  defp primes, do: [2,3,5,7,11,13,17,19]

  def  max_aggregate(a,b),
    do: Enum.zip(a,b)
    |> Enum.map(fn {x,y} -> max(x,y) end)

  def count_div(n, factor, accu \\ 0)

  def count_div(n, factor, accu) when rem(n, factor) == 0,
    do: count_div(div(n, factor), factor, accu + 1)

  def count_div(_, _, accu), do: accu

  defp prime_factors(n) do
    Enum.reduce(primes(), [],
      fn current, accu ->
        if rem(n,current) == 0 do
          accu ++ [count_div(n, current)]
        else
          accu ++ [0]
        end
      end)
  end

  def calc(n) do
    2..n-1
    |> Enum.map(&prime_factors/1)
    |> Enum.reduce(fn cur, acc -> max_aggregate(cur, acc) end)
    |> Enum.zip(primes())
    |> Enum.map(fn {e,p} -> trunc(:math.pow(p,e)) end)
    |> Enum.reduce(1, fn a,b -> a * b end)
  end

  # ------------------------------------ Heiko ---------------

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
