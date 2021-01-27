note

	description:

		"Imported UTF-16 encoding routines"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2002-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class UC_IMPORTED_UTF16_ROUTINES

feature -- Access

	utf16: UC_UTF16_ROUTINES
			-- UTF-16 encoding routines
		once
			create Result
		ensure
			instance_free: class
			utf16_not_void: Result /= Void
		end

end
