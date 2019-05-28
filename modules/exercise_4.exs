defmodule Sum do
  def of(1), do: 1
  def of(n), do: of(n - 1) + n

  def gcd(a, 0), do: a;
  def gcd(a, b), do: gcd(b, rem(a, b));
end


