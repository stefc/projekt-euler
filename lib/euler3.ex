defmodule Euler3 do
  @moduledoc """
  The prime factors of 13195 are 5,7,13 and 29

  What is the largest prime factor of the number 600851475143 ?
  """

  import Integer

  def calc(n) do
    get_largest_prime_factor(n, 2, trunc(:math.sqrt(n)))
  end

  defp get_largest_prime_factor(x, acc, max) do
    cond do
      acc > max || x == acc ->
        x
      mod(x,acc) == 0 ->
        get_largest_prime_factor(div(x,acc), acc, max)
      true ->
        get_largest_prime_factor(x, acc + 1, max)
    end
  end
end
