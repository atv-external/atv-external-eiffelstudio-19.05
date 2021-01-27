note

	description:

		"Shared dynamic type comparators by id"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2016-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class ET_SHARED_DYNAMIC_TYPE_COMPARATOR_BY_ID

feature -- Access

	dynamic_type_comparator: ET_DYNAMIC_TYPE_COMPARATOR_BY_ID
			-- Dynamic type comparator by id
		once
			create Result.make
		ensure
			instance_free: class
			dynamic_type_comparator_not_void: Result /= Void
		end

end
