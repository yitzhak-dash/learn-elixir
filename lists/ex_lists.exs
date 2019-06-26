defmodule ExerciseList_1 do
  def mapsum(list, func), do: mapsum(list, 0, func)
  defp mapsum([], val, _func), do: val
  defp mapsum([head | tail], val, func), do: mapsum(tail, func.(head) + val, func)
end