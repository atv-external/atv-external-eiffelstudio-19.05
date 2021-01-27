note

	description:

		"Eiffel note terms"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_INDEXING_TERM

inherit

	ET_INDEXING_TERM_ITEM

feature -- Access

	indexing_term: ET_INDEXING_TERM
			-- Note term in comma-separated list
		do
			Result := Current
		end

end
