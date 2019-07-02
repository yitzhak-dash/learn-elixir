defmodule ExerciseList_1 do
  def mapsum(list, func), do: mapsum(list, 0, func)
  defp mapsum([], val, _func), do: val
  defp mapsum([head | tail], val, func), do: mapsum(tail, func.(head) + val, func)
   def max_list([head | tail]), do: max_list(tail, head)
  def max_list([], max_val), do: max_val
  def max_list([head | tail], max_val), do: max_list(tail, get_max_val(head, max_val))
  def get_max_val(left, right) when left >= right, do: left
  def get_max_val(left, right) when left < right, do: right
end