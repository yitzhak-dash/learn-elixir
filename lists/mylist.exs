defmodule MyList do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def add_1([]), do: []
  def add_1([head | tail]), do: [head + 1 | add_1(tail)]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def reduce([], val, _func), do: val
  def reduce([head | tail], val, func), do: reduce(tail, func.(head, val), func)

  def sum(list), do: sum(list, 0)
  def sum([], val), do: val
  def sum([head | tail], val), do: sum(tail, head + val)
end
