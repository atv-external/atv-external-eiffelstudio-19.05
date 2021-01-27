note

	description:

		"Cursors for bilinear sets"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 2008-2013, Daniel Tuser and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class DS_BILINEAR_SET_CURSOR [G]

inherit

	DS_BILINEAR_CURSOR [G]
		redefine
			next_cursor,
			container
		end

	DS_SET_CURSOR [G]
		undefine
			off
		redefine
			next_cursor,
			container
		end

feature -- Access

	container: DS_BILINEAR_SET [G]
			-- Bilinear set traversed
		deferred
		end

feature {DS_BILINEAR_SET} -- Implementation

	next_cursor: detachable DS_BILINEAR_SET_CURSOR [G]
			-- Next cursor
			-- (Used by `container' to keep track of traversing
			-- cursors (i.e. cursors associated with `container'
			-- and which are not currently `off').)

end
