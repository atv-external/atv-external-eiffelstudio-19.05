note

	description:

		"Shared Eiffel class codes"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2009-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class ET_SHARED_CLASS_CODES

feature -- Access

	class_codes: ET_CLASS_CODES
			-- Shared class codes
		once
			create Result
		ensure
			instance_free: class
			class_codes_not_void: Result /= Void
		end

end
