defmodule User do
	@moduledoc """
	Defines the user struct and functions to handle it.
	"""

	import String, only: [split: 1]
	import List, only: [first: 1, last: 1]

	defstruct name: nil, email: nil

	@doc """
	Get the first name of a user

	## Parameters
	- 'user' - A user struct.

	## Examples

			user = %User{name: "Max Mustermann"}
			User.first_name(user)
			"Max"
	"""
	def first_name(user) do
		user
		|> get_names
		|> first
	end

	@doc """
	Get the last name of a user

	## Parameters
	- 'user' - A user struct

	## Examples

			user = %User{name: "Max Mustermann"}
			User.last_name(user)
			"Mustermann"
	"""
	def last_name(user) do
		user
		|> get_names
		|> last
	end

	defp get_names(user) do
		split(user.name)
	end
end