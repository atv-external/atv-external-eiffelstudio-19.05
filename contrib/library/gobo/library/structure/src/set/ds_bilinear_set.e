note

	description:

		"Sets that allow bilinear traversing"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 2008, Daniel Tuser and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class DS_BILINEAR_SET [G]

inherit

	DS_SET [G]

	DS_BILINEAR [G]
		undefine
			occurrences,
			cursor_off,
			equality_tester_settable
		redefine
			new_cursor
		end

feature -- Access

	new_cursor: DS_BILINEAR_SET_CURSOR [G]
			-- New external cursor for traversal
		deferred
		end

end
