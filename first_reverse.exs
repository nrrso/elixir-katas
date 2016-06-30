defmodule FirstReverse do
	@moduledoc """
	Reverses a string.
	"""

	import String, only: [reverse: 1]

	@doc """
	Returns a reversed string

	## Parameters
	- 'str' - A string to be reversed.

	## Examples
			myString = "Hello World"
			FirstReverse.backwards(myString)
			iex> "dlroW olleH"
	"""
	def backwards(str) do
		str
		|> reverse
	end
end