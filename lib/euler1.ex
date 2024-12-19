defmodule Euler1 do
  @moduledoc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3,5,6 and 9.
  The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  @doc """
  Find solution for problem Euler1

  """

  import Bitwise
  import Integer

  def calc(max_number) do
    x = max_number - 1
    sum_divisible_by(x, 3) + sum_divisible_by(x, 5) - sum_divisible_by(x, 3 * 5)
  end

  defp sum_divisible_by(n, by) do
    ((n - mod(n, by)) * (div(n, by) + 1)) >>> 1
  end
end
