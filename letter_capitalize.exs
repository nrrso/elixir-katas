defmodule LetterCapitalize do
	@moduledoc """
	Capitalize each word of a string.
	"""

	@doc """
	Takes in a string, splits it on spaces, capitalizes each word and rejoins the List.

	## Parameters
	- 'str' - A string of words to be capitalized.

	## Examples
			text = "fun times are awesome"
			LetterCapitalize.capitalize(text)
			iex> "Fun Times Are Awesome"
	"""
	def capitalize(str) do
		str
		|> String.split(" ")
		|> Enum.map( fn (x) -> String.capitalize(x) end )
		|> Enum.join(" ")
	end
end