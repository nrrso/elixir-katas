defmodule LetterChange do
	@moduledoc """
	Change the Characters of a String according by 1, also known as Caesers cipher.
	"""

	@doc """
	Takes in a string and shifts each character to next one in the alphabet. Vocals are set uppercase.

	## Parameters
	- 'str' - A String to manipulate.

	## Examples
			text = "fun times!"
			LetterChange.shift(text)
			iex> "gvO Ujnft!"
	"""
	def shift(str) do
		str
			|> String.split(" ")
			|> Enum.map( fn (x) -> String.downcase(x) end )
			|> Enum.map( fn (x) -> to_char_list x end )
			|> Enum.map( fn (x) -> toNextChar(x) end )
			|> Enum.join(" ")
	end

	defp toNextChar(str) do
		str
		|> Enum.map( fn (x) -> x<97&&x||97+rem x-71+1,26 end )
		|> Enum.map( fn (c) -> charToUppercase(c) end )
	end

	defp charToUppercase(c) do
		case c do
		  97 ->
		  	65
		  101 ->
		  	69
		  105 ->
		  	73
		  111 ->
		  	79
		  117 ->
		    85
		  _ ->
		  	c
		end
	end
end