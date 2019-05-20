greeter = fn (name) -> (fn -> "Hello #{name}" end) end
add_n = fn first -> (fn second -> first + second end) end
