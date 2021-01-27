note

	description:

		"Imported routines that ought to be in class INTEGER"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 1999-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class KL_IMPORTED_INTEGER_ROUTINES

feature -- Access

	INTEGER_: KL_INTEGER_ROUTINES
			-- Routines that ought to be in class INTEGER
		once
			create Result
		ensure
			instance_free: class
			integer_routines_not_void: Result /= Void
		end

end
