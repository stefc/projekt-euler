defmodule Euler4Test do
  use ExUnit.Case

  test "stefan" do
    time = measure(fn -> Euler4.calc(999) end)
    IO.puts("calc Time: #{time}")
    assert Euler4.calc(999) == 906_609
  end

  test "heiko" do
    time = measure(fn -> Euler4.solve() end)
    IO.puts("solve Time: #{time}")
    assert Euler4.solve() == 906_609
  end

  def measure(function) do
    function
    |> :timer.tc()
    |> elem(0)
    |> Kernel./(1_000_000)
  end
end
