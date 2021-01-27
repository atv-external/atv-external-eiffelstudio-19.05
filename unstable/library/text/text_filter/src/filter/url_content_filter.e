note
	description: "Summary description for {URL_CONTENT_FILTER}."
	author: ""
	date: "$Date: 2015-10-20 16:46:47 +0000 (Tue, 20 Oct 2015) $"
	revision: "$Revision: 98020 $"

class
	URL_CONTENT_FILTER

inherit
	CONTENT_FILTER
		redefine
			help
		end

feature -- Access

	name: STRING_8 = "url"

	title: STRING_8 = "URL filter"

	description: STRING_8 = "Turns web and e-mail addresses into clickable links."

	help: STRING = "Web page addresses and e-mail addresses turn into links automatically."

feature -- Conversion

	filter (a_text: STRING_GENERAL)
		do
			--| FIXME jfiat [2012/09/12] : todo
		end

end

