note

	description:

		"Values that are accessible through keys"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2004, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class KL_VALUES [G, K]

feature -- Access

	value (k: K): detachable G
			-- Item associated with `k';
			-- Return default value if no such item
		require
			k_not_void: k /= Void
		deferred
		end

end
