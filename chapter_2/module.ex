defmodule Geometry do
  @moduledoc "It implements the basic geometry operations"

  # import external modules
  import IO
  alias Integer, as: I

  # modules attributes
  @pi 3.14159

  # defp --> private
  defp private_sum(a, b), do: a + b

  @doc "It Computes the circle area"
  @spec circumference(number) :: number
  def circumference(ray), do: 2 * ray * @pi

  @doc "It Computes the rectangule area"
  @spec rectangule_area(number, number) :: number
  def rectangule_area(a, b) do
    a*b
  end

  @doc "It Computes the square area"
  @spec square_area(number) :: number
  def square_area(a), do: rectangule_area(a, a)

  @doc "It executes the pipe operation example"
  def pipe_example(a) do
    a
    |> abs()
    |> square_area()
    |> I.to_string()
    |> puts()
  end

  @doc "It shows how default args work"
  def default_args(a \\ 0, b \\ 1), do: private_sum(a, b)

  def erlang_types() do
    integer = 1
    hex = 0xFF
    float = 3.14
    n_exponential = 1.0e-2
    divison_returns_float = 4 / 2 # 2.0
    division_integer = div(5,2) # 2
    division_remainder = rem(5,2) # 1
    large_number = 1_000_000
    extra_large_number = 999999999999999999999999999999999999999999999999999999999999999999999999999999
  end
end


# run; iex file.ex
# compile: elixirc file.ex
# view docs: iex and h MODULE_NAME.function
