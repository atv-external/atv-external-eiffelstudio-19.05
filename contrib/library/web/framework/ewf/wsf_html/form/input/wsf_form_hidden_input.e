note
	date: "$Date: 2018-12-19 15:02:55 +0000 (Wed, 19 Dec 2018) $"
	revision: "$Revision: 102640 $"

class
	WSF_FORM_HIDDEN_INPUT

inherit
	WSF_FORM_INPUT
		redefine
			append_item_to_html
		end

create
	make,
	make_with_text

feature -- Access

	input_type: STRING
		once
			Result := "hidden"
		end

feature -- Conversion

	append_item_to_html (a_theme: WSF_THEME; a_html: STRING_8)
		do
			a_html.append ("<div style=%"display:none%">")
			Precursor (a_theme, a_html)
			a_html.append ("</div>")
		end

end
