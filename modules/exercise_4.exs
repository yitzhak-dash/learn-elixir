defmodule Sum do
  def of(1), do: 1
  def of(n), do: of(n - 1) + n
end
