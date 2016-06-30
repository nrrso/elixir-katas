defmodule FirstFactorial do
	@moduledoc """
	Return the factorial for a number.
	"""

	@doc """
	Takes in a number n and returns the factorial value.

	## Parameters
	- 'num' - A factorial to get the product from.

	## Examples

			FirstFactorial.factorial(4)
			iex> 24
	"""
	def factorial(num) do
		1..num
		|> Enum.to_list
		|> Enum.reduce( fn (x, acc) -> x * acc end)
	end
end