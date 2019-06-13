defmodule Chop do
  def middle(a, b), do: div(a + b, 2)

  def guess(n, a..b) when n < b do
    candidate = middle(a, b)
    IO.puts("Is it #{candidate}")
    guess(n, a..candidate)
  end

  def guess(n, _..b) when n > b do
    candidate = b + middle(b, 2)
    IO.puts("Is it #{candidate}")
    guess(n, b..candidate)
  end

  def guess(n, _) do
    IO.puts(n)
  end
end