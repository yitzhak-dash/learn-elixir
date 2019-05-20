# 1. list_concat.([:a, :b], [:c, :d]) => [:a, :b, :c, :d]
# 2. sum.(1, 2, 3) => 6
# 3. pair_tuple_to_list.( { 1234, 5678 } ) => [ 1234, 5678 ]

list_concat = fn (arr1, arr2) -> arr1 ++ arr2 end
sum = fn (a, b, c) -> a + b + c end
pair_tuple_to_list = fn ({a, b}) -> [a, b] end

# Exercise: Functions-2
# Write a function that takes three arguments.
# If the first two are zero, return “FizzBuzz.”
# If the first is zero, return “Fizz.”
# If the second is zero, return “Buzz.”
# Otherwise return the third argument. Do not use any language features that we haven’t yet covered in this book.

func_1 = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, x) -> x
end

# Exercise: Functions-3
# The operator rem(a, b) returns the remainder after dividing a by b.
# Write a function that takes a single integer (n) and calls the function in the previous exercise, passing it rem(n,3),
# rem(n,5), and n. Call it seven times with the arguments 10, 11, 12, and so on.
# You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz, 16.”

func_2 = fn (n) -> func_1.(rem(n, 3), rem(n, 5), n) end

# Exercise: Functions-4
prefix = fn first -> (fn second -> "#{first} #{second}"  end)  end