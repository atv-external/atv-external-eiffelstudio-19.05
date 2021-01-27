note

	description:

		"Cursors for arrayed sparse table traversals"

	storable_version: "20130823"
	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 2001-2013, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class DS_ARRAYED_SPARSE_TABLE_CURSOR [G, K]

inherit

	DS_SPARSE_TABLE_CURSOR [G, K]
		redefine
			container,
			next_cursor
		end

create

	make

feature -- Access

	container: DS_ARRAYED_SPARSE_TABLE [G, K]
			-- Arrayed sparse table traversed

feature {DS_ARRAYED_SPARSE_TABLE} -- Implementation

	next_cursor: detachable DS_ARRAYED_SPARSE_TABLE_CURSOR [G, K]
			-- Next cursor
			-- (Used by `container' to keep track of traversing
			-- cursors (i.e. cursors associated with `container'
			-- and which are not currently `off').)

end
