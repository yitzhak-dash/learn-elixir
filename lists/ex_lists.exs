defmodule ExerciseList_1 do
  def mapsum(list, func), do: MyList.reduce(MyList.map(list, func), 0, &(&1 + &2))

  def max_list([head | tail]), do: max_list(tail, head)
  def max_list([], max_val), do: max_val
  def max_list([head | tail], max_val), do: max_list(tail, get_max_val(head, max_val))
  def get_max_val(left, right) when left >= right, do: left
  def get_max_val(left, right) when left < right, do: right
end