note
	description: "Summary description for {WIKITEXT_FORMAT}."
	date: "$Date: 2017-01-27 18:00:20 +0000 (Fri, 27 Jan 2017) $"
	revision: "$Revision: 99767 $"

class
	WIKITEXT_FORMAT

inherit
	CONTENT_FORMAT
		redefine
			default_create
		end

feature {NONE} -- Initialization

	default_create
		do
			Precursor
			create filters.make (1)
			filters.force (create {WIKITEXT_FILTER})
		end

feature -- Access

	name: STRING = "wikitext"

	title: STRING_8 = "Wikitext"

	filters: ARRAYED_LIST [CONTENT_FILTER]

end
