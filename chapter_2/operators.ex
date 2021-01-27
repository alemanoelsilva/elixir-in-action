defmodule Operators_example do
  @moduledoc "It implements the basic geometry operations"

  # import external modules
  import IO
  import List
  alias Integer, as: I


  def erlang_operators() do
    a = 1
    b = 1.0
    c = 2
    d = 2.0

    IO.puts a == b # true
    IO.puts a === b # false
    IO.puts c !== d # true
    IO.puts c != d # false

    is_falsy = :false || false || nil
    is_truthy = :true && true

    IO.puts is_falsy
    IO.puts is_truthy

    is_falsy_true = true

    IO.puts !is_falsy_true

  end

end

# run; iex file.ex
# compile: elixirc file.ex
# view docs: iex and h MODULE_NAME.function
