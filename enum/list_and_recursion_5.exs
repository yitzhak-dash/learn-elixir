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
  #  TODO: support negative count(starts counting from the back of the enumerable)
  # Splits the enumerable into two enumerables, leaving count elements in the first one.
  def split([], _), do: {[], []}
  def split([head | tail], count) do
    split({[head], tail}, count)
  end

  def split({list, [head | tail]}, count) do
    if (length(list)) == count do
      {list, [head | tail]}
    else
      split({list ++ [head], tail}, count)
    end
  end

  # take
  # TODO: support negative amount(the amount of last values will be taken)
  # Takes the first amount items from the enumerable.
  def take([], _), do: []

  def take(list, amount) when amount < 0 do
    take(list, length(list) + amount, amount * (-1))
  end

  def take([head | tail], amount) do
    if amount == 0 do
      []
    else
      [head] ++ take(tail, amount - 1)
    end
  end

  def take([head | tail], from, amount) do
    if from > 0 do
      take(tail, from - 1, amount)
    else
      take([head | tail], amount)
    end
  end

end