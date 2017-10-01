module ApplicationHelper
	OEDENATION_OPTIONS = [
		["Crescente", "title ASC"],
		["Decrescente", "title DESC"]
	]

	def options_for_ordenation(selected)
		options_for_select OEDENATION_OPTIONS, selected
	end

end
