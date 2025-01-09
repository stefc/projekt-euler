defmodule Euler4 do
  def solve() do
    palindromes()
    |> Stream.drop_while(fn palindrome ->
      product_of_three_digit_numbers?(palindrome) == []
    end)
    |> Enum.take(1)
    |> hd()
  end

  def product_of_three_digit_numbers?(n) do
    for factor1 <- 999..100//-1,
        factor2 <- 999..100//-1,
        factor1 * factor2 == n,
        do: {factor1, factor2}
  end

  def palindromes() do
    (999 * 999)..(100 * 100)//-1
    |> Stream.filter(&palindrome?/1)
  end

  defp palindrome?(n) do
    str = Integer.to_string(n)
    str == String.reverse(str)
  end

  def calc(n) do
    start =
      if n > 99,
        do: 100,
        else: 10

    range_1 = start..n
    range_2 = start..n
    Enum.max(for n <- range_1, m <- range_2, is_palindrome(n * m), do: n * m)
  end

  def is_palindrome(n),
    do: n == reverse(n)

  defp reverse(n),
    do: reverse(0, n)

  defp reverse(reversed, n) when n > 0,
    do: reverse(10 * reversed + rem(n, 10), div(n, 10))

  defp reverse(reversed, _n),
    do: reversed
end
