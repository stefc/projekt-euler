defmodule Euler3Test do
  use ExUnit.Case

  test "sample" do
    assert Euler3.calc(13_195) == 29
  end

  test "problem" do
    assert Euler3.calc(600_851_475_143) == 6_857
  end
end
