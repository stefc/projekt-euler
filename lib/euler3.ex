defmodule Euler3 do
  def generate(num) do
    generate(num, 2, [])
  end

  defp generate(1, _, acc) do
    acc
  end

  defp generate(num, candidate, acc) when rem(num, candidate) == 0 do
    generate(div(num, candidate), candidate, [candidate | acc])
  end

  defp generate(num, candidate, acc) do
    generate(num, candidate + 1, acc)
  end

  def calc(n) do
    get_largest_prime_factor(n, 2, trunc(:math.sqrt(n)))
  end

  defp get_largest_prime_factor(x, acc, max)
    when acc > max or x == acc,
    do: x

  defp get_largest_prime_factor(x, acc, max)
    when rem(x, acc) == 0,
    do: get_largest_prime_factor(div(x, acc), acc, max)

  defp get_largest_prime_factor(x, acc, max),
    do: get_largest_prime_factor(x, acc + 1, max)

end
