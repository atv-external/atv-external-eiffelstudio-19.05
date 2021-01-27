note

	description:

		"Shared garbage collection facilities"

	pattern: "Singleton"
	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2008-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class KL_SHARED_MEMORY

feature -- Access

	memory: KL_MEMORY
			-- Garbage collection facilities
		once
			create Result
		ensure
			instance_free: class
			memory_not_void: Result /= Void
		end

end
