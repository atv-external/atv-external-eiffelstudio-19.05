note
	description: "Widget embedding raw text, this will be html encoded before being rendered in target html"
	date: "$Date: 2013-09-06 13:59:05 +0000 (Fri, 06 Sep 2013) $"
	revision: "$Revision: 92915 $"

class
	WSF_WIDGET_RAW_TEXT

inherit
	WSF_WIDGET

create
	make_with_text

feature {NONE} -- Initialization

	make_with_text (a_text: READABLE_STRING_GENERAL)
		do
			text := a_text
		end

feature -- Access

	text: READABLE_STRING_GENERAL
			-- Text to be html encoded into html

feature -- Change

	set_text (a_text: like text)
		do
			text := a_text
		end

feature -- Conversion

	append_to_html (a_theme: WSF_THEME; a_html: STRING_8)
		do
			a_html.append (a_theme.html_encoded (text))
		end

end
