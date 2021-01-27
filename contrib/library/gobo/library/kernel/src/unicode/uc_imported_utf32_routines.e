note

	description:

		"Imported UTF-32 encoding routines"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2005-2018, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class UC_IMPORTED_UTF32_ROUTINES

feature -- Access

	utf32: UC_UTF32_ROUTINES
			-- UTF-32 encoding routines
		once
			create Result
		ensure
			instance_free: class
			utf32_not_void: Result /= Void
		end

end
