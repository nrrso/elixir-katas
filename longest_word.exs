defmodule LongestWord do
	@moduledoc """
	Find the longest word in a sentence
	"""
	import String, only: [split: 1]
	import Enum

	@doc """
	Receives a string and returns the longest word.

	## Parameters
	- 'str' - A string to get the longest word.

	## Examples
			text = "This sentence has a very longlonglong Word."
			LongestWord.longest(text)
			iex> "longlonglong"
	"""
	def longest(str) do
		str
		|> split
		|> sort( &(String.length(&1) > String.length(&2)) )
		|> at(0)
	end
end