defmodule FizzBuzz do
	@moduledoc """
	A simple FizzBuzz Logger
	"""
	@doc """
	Create and Convert List to FizzBuzz List.

	## Parameters
	- 'n' - Upper Limit for fizzbuzz.
	"""
	def to(n) do
		1..n
		|> Enum.to_list
		|> Enum.map(fn(x) -> is_fizzbuzz(x) end)
	end

	@doc """
	Check Value if FizzBuzz Rules apply.

	## Parameters
	- 'x' - Value to be checked.
	"""
	def is_fizzbuzz(x) do
		cond do
			rem(x, 5) == 0 && rem(x, 3) == 0 ->
		    "FizzBuzz"
		  rem(x, 3) == 0 ->
		    "Fizz"
		  rem(x, 5) == 0 ->
		    "Buzz"
		  true ->
		    x
		end
	end
end