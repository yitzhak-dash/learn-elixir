defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true
end

# s1 = %Subscriber{}
# => %Subscriber{name: "Dave", over_18: true, paid: false}
# s1 = %Subscriber{name: "Dave"}
# => %Subscriber{name: "Dave", over_18: true, paid: false}