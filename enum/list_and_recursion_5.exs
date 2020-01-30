defmodule CustomEnum do
  #  ex.5

  #all?
  def all?([], _), do: true
  def all?([head | tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end

  # filter
  def filter([], _), do: []
  def filter([head | tail], func) do
    if func.(head) do
      [head | filter(tail, func)]
    else
      filter(tail, func)
    end
  end


  # split
  # Splits the enumerable into two enumerables, leaving count elements in the first one.
  def split([], _), do: {[], []}
  def split([head | tail], count) do
    split({[head], tail}, count)
  end

  def split({list, [c | d]}, count) do
    if (length(list)) == count do
      {list, [c | d]}
    else
      split({list ++ [c], d}, count)
    end
  end

end