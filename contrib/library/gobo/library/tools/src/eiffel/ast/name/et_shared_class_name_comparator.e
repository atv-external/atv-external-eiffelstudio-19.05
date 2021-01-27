note

	description:

		"Shared class name comparators"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2017-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class ET_SHARED_CLASS_NAME_COMPARATOR

feature -- Access

	class_name_comparator: ET_CLASS_NAME_COMPARATOR
			-- Class name comparator
		once
			create Result.make
		ensure
			instance_free: class
			class_name_comparator_not_void: Result /= Void
		end

end
