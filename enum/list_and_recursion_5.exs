defmodule CustomEnum do
#  ex.5
  def all?([], func), do: true
  def all?([head | tail], func) do
    if func.(head) do
      all?(tail, func)
    else
      false
    end
  end
end