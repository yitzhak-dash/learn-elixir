defmodule Greeter do
  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_) -> "I don't know you"
    end
  end
end

mr_bro = Greeter.for("Man", "Gerara here,")

IO.puts(mr_bro.("Man"))
IO.puts(mr_bro.("Woman"))