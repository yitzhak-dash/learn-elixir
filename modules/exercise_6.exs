defmodule Chop do

  def _guess(n, a..b) when n not in a..b do
    ""
  end

  def _guess(n, n..b) do
    IO.puts(n)
  end

  def _guess(n, a..b) when n in a..b do
    guess(n, a..b)
  end

  def guess(n, a..b) do
    candidate = a + div(b - a, 2)
    IO.puts("Is it #{candidate}")
    _guess(n, a..(candidate - 1))
    _guess(n, candidate..b)
  end
end