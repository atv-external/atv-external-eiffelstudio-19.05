note

	description:

		"Stacks (Last-In, First-Out)"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 1999-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

deferred class DS_STACK [G]

inherit

	DS_DISPENSER [G]
		redefine
			put,
			force
		end

feature -- Element change

	put (v: G)
			-- Push `v' on stack.
		deferred
		ensure then
			pushed: {KL_TYPE [G]}.same_objects (item, v)
		end

	force (v: G)
			-- Push `v' on stack.
		deferred
		ensure then
			pushed: {KL_TYPE [G]}.same_objects (item, v)
		end

	replace (v: G)
			-- Replace top item by `v'.
		require
			not_empty: not is_empty
		deferred
		ensure
			same_count: count = old count
			replaced: {KL_TYPE [G]}.same_objects (item, v)
		end

end
