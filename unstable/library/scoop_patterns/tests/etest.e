note
	description: "Summary description for {ETEST}."
	author: ""
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

expanded class
	ETEST

inherit
	ANY
		redefine
			default_create
		end

create
	default_create

feature {NONE} -- Initialization

	default_create
			-- <Precursor>
		do
			create item
		end

feature -- Access

	item: ANY
			-- A reference in an expanded object.

end
