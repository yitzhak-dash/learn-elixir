defmodule Factorial do
  def of(0), do: 1
  def of(n), do: of(n - 1) * n
end