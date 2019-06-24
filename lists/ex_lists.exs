defmodule ExerciseList_1 do
  def mapsum(list, func), do: MyList.reduce(MyList.map(list, func), 0, &(&1 + &2))
end