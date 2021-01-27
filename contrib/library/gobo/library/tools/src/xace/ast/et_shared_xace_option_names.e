note

	description:

		"Shared Xace option names"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_SHARED_XACE_OPTION_NAMES

feature -- Access

	options: ET_XACE_OPTION_NAMES
			-- Option names
		once
			create Result
		ensure
			options_not_void: Result /= Void
		end

end
