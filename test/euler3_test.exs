defmodule Euler3Test do
  use ExUnit.Case

  test "stefan" do
    time = measure(fn -> Euler3.calc(600_851_475_143) end)
    IO.puts("calc Time: #{time}")
    assert Euler3.calc(600_851_475_143) == 6857
  end

  test "heiko" do
    time = measure(fn -> Euler3.generate(600_851_475_143) end)
    IO.puts("generate Time: #{time}")
    assert Euler3.generate(600_851_475_143) |> hd() == 6857
  end

  def measure(function) do
    function
    |> :timer.tc()
    |> elem(0)
    |> Kernel./(1_000_000)
  end
end
