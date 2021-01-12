defmodule Geometry do
  defp private_sum(a, b), do: a + b

  def rectangule_area(a, b) do
    a*b
  end

  def square_area(a), do: rectangule_area(a, a)

  def pipe_example(a) do
    a
    |> abs()
    |> square_area()
    |> Integer.to_string()
    |> IO.puts()
  end

  def default_args(a \\ 0, b \\ 1), do: private_sum(a, b)
end


# iex file.ex
