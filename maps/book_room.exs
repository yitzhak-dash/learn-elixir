import people

defmodule HotelRoom do

  def book(%{name: name, height: height})
      when height > 1.9 do
    IO.puts('Need extra-long bed for #{name}}')
  end

  def book(%{name: name, height: height})
      when height < 1.3 do
    IO.puts('Need low shower control for #{name}}')
  end

  def book(%{name: name, height: height}) do
    IO.puts('Need regular bed for #{name}}')
  end

end

