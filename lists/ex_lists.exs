defmodule ExerciseList_1 do
  def mapsum(list, func), do: mapsum(list, 0, func)
  defp mapsum([], val, _func), do: val
  defp mapsum([head | tail], val, func), do: mapsum(tail, func.(head) + val, func)

  def max_list([head | tail]), do: max_list(tail, head)
  def max_list([], max_val), do: max_val
  def max_list([head | tail], max_val), do: max_list(tail, get_max_val(head, max_val))

  def get_max_val(left, right) when left >= right, do: left
  def get_max_val(left, right) when left < right, do: right

  def caesar([], _n), do: []
  def caesar([head | tail], n) when (head + n) > 122, do: caesar([head - 26 | tail], n)
  def caesar([head | tail], n), do: [(head + n)] ++ caesar(tail, n)

  #  exercise #4
  def span(from, to) when from > to, do: []

  def span(from, to) do
    [from] ++ span(from + 1, to)
  end
end