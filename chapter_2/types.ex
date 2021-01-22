defmodule Types_example do
  @moduledoc "It implements the basic geometry operations"

  # import external modules
  import IO
  import List
  alias Integer, as: I

  def erlang_types() do
    integer = 1
    hex = 0xFF
    float = 3.14
    n_exponential = 1.0e-2
    # 2.0
    divison_returns_float = 4 / 2
    # 2
    division_integer = div(5, 2)
    # 1
    division_remainder = rem(5, 2)
    large_number = 1_000_000

    extra_large_number =
      999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999_999

    some_atom = :some_atom_here
    # it is true :0
    puts(true == true)
    elixir_null = nil
    # it is true :0
    puts(nil == nil)
    tuple = {"Bob", 25}
    # it returns 25
    elem(tuple, 1)
    # it returns a new tuple changing the 25 value to 20
    new_tuple = put_elem(tuple, 1, 20)
    list = [2, 3, 5, 7]
    # 4
    length(list)
    # true
    puts(7 in list)
    new_list = List.replace_at(list, 1, 99)
    # forEach
    for n <- new_list, do: puts(n)
    puts("List ends")
    head = hd(new_list)
    tail = tl(new_list)
    a_list = [:some_value | new_list]
    for l <- a_list, do: puts(l)
    puts("List ends")
  end

  def erlang_range() do
    range = 1..3

    IO.puts(2 in range)
    IO.puts(5 in range)

    Enum.each(
      1..5,
      &IO.puts/1
    )
  end

  def erlang_list() do
    days = [{:monday, 1}, {:tuesday, 2}] # or
    days = [monday: 1, tuesday: 2]

    IO.puts Keyword.get(days, :monday) # or
    IO.puts days[:monday]
  end

  def erlang_map_set() do
    days = MapSet.new([:monday, :tuesday, :wednesday])

    IO.puts MapSet.member?(days, :monday)
    IO.puts MapSet.member?(days, :sunday)

    days = MapSet.put(days, :thursday)

    Enum.each(days, &IO.puts/1)
  end

  def erlang_date_time do
    date = ~D[2018-01-31]

    IO.puts date

    IO.puts date.year
    IO.puts date.month

    time = ~T[11:59:12.00007]

    IO.puts time

    IO.puts time.hour
    IO.puts time.minute

    naive_datetime = ~N[2018-01-31 11:59:12.00007]

    IO.puts naive_datetime

    IO.puts naive_datetime.year
    IO.puts naive_datetime.hour

    datetime = DateTime.from_naive!(naive_datetime, "Etc/UTC")

    IO.puts datetime

    IO.puts datetime.year
    IO.puts datetime.hour

    IO.puts datetime.time_zone
  end


end

# run; iex file.ex
# compile: elixirc file.ex
# view docs: iex and h MODULE_NAME.function
