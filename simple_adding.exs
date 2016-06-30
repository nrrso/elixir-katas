defmodule SimpleAdding do
	@moduledoc """
	Add a all numbers between 1 and n. If n = 4, it will calculate 1+2+3+4 = 10
	"""

	@doc """
	Sums all numbers from 1 to n

	## Parameters
	- 'n' - Upper boundary for addition.

	## Examples
			SimpleAdding.addAll(4)
			iex> 10
	"""
	def addAll(n) do
		Enum.sum(1..n)
	end
end