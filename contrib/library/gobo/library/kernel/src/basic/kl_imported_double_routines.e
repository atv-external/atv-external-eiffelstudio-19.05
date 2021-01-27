note

	description:

		"Imported routines that ought to be in class DOUBLE"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2003-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class KL_IMPORTED_DOUBLE_ROUTINES

feature -- Access

	DOUBLE_: KL_DOUBLE_ROUTINES
			-- Routines that ought to be in class DOUBLE
		once
			create Result
		ensure
			instance_free: class
			double_routines_not_void: Result /= Void
		end

end
