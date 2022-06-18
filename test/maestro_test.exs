defmodule MaestroTest do
  use ExUnit.Case
  doctest Maestro

  test "greets the world" do
    assert Maestro.hello() == :world
  end
end
