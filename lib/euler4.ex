defmodule Euler4 do
  @moduledoc """
  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
  """

  def solve() do
    palindromes()
    |> Stream.drop_while(fn palindrome ->
      product_of_three_digit_numbers?(palindrome) == []
    end)
    |> Enum.take(1)
    |> hd()
  end

  def product_of_three_digit_numbers?(n),
    do: (
      for factor1 <- 999..100//-1, factor2 <- 999..100//-1, factor1 * factor2 == n,
        do: {factor1, factor2}
    )

  def palindromes(),
    do:
     (999 * 999)..(100 * 100)//-1
      |> Stream.filter(&palindrome?/1)

  def calc(n) do
    start = if n > 99, do: 100, else: 10
    Enum.max(for n <- start..n, m <- start..n, palindrome?(n * m), do: n * m)
  end

  def palindrome?(n),
    do: n == reverse(n)

  defp reverse(n),
    do: reverse(0, n)

  defp reverse(reversed, n) when n > 0,
    do: reverse(10 * reversed + rem(n, 10), div(n, 10))

  defp reverse(reversed, _n),
    do: reversed
end
