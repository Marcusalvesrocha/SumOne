module ApplicationHelper
	OEDENATION_OPTIONS = [
		["Título", "title"],
		["Descrição", "description"],
		["Autor", "author"]
	]

	def options_for_ordenation(selected)
		options_for_select OEDENATION_OPTIONS, selected
	end

end
