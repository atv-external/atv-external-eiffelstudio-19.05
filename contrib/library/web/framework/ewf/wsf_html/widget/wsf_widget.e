note
	description: "Summary description for {WSF_WIDGET}."
	author: ""
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"

deferred class
	WSF_WIDGET

feature -- Conversion

	append_to_html (a_theme: WSF_THEME; a_html: STRING_8)
		deferred
		end

	to_html (a_theme: WSF_THEME): STRING_8
		do
			create Result.make_empty
			append_to_html (a_theme, Result)
		end

end
