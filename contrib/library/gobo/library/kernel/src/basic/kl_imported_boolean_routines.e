note

	description:

		"Imported routines that ought to be in class BOOLEAN"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2002-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class KL_IMPORTED_BOOLEAN_ROUTINES

feature -- Access

	BOOLEAN_: KL_BOOLEAN_ROUTINES
			-- Routines that ought to be in class BOOLEAN
		once
			create Result
		ensure
			instance_free: class
			boolean_routines_not_void: Result /= Void
		end

end