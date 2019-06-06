defmodule Chop do
  def guess(n, n) when is_number(n) do
    n
  end
  def guess(n, a..b) do
    candidate = div(b, 2)
    IO.puts("Is it #{candidate}")
    guess(n, candidate)
    IO.puts(b)
    IO.puts(n)
    IO.puts(a)
  end
end