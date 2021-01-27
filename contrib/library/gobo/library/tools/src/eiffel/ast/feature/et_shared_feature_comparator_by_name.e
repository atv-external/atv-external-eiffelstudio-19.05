note

	description:

		"Shared feature comparators by name"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2017-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class ET_SHARED_FEATURE_COMPARATOR_BY_NAME

feature -- Access

	feature_comparator_by_name: ET_FEATURE_COMPARATOR_BY_NAME
			-- Feature comparator by name
		once
			create Result.make
		ensure
			instance_free: class
			feature_comparator_by_name_not_void: Result /= Void
		end

end
