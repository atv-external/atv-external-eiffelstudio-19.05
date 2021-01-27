note
	description: "Widget embedding html text/code, this will render as it is in target html"
	date: "$Date: 2013-09-06 13:59:05 +0000 (Fri, 06 Sep 2013) $"
	revision: "$Revision: 92915 $"

class
	WSF_WIDGET_TEXT

inherit
	WSF_WIDGET

create
	make_with_text

feature {NONE} -- Initialization

	make_with_text (a_text: READABLE_STRING_8)
		do
			text := a_text
		end

feature -- Access

	text: READABLE_STRING_8

feature -- Change

	set_text (a_text: like text)
		do
			text := a_text
		end

feature -- Conversion

	append_to_html (a_theme: WSF_THEME; a_html: STRING_8)
		do
			a_html.append (text)
		end

end
