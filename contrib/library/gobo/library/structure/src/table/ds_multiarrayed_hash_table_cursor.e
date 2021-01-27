note

	description:

		"Cursors for multi-arrayed hash table traversals"

	storable_version: "20130823"
	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 2001-2013, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class DS_MULTIARRAYED_HASH_TABLE_CURSOR [G, K -> HASHABLE]

inherit

	DS_MULTIARRAYED_SPARSE_TABLE_CURSOR [G, K]
		redefine
			container,
			next_cursor
		end

create

	make

feature -- Access

	container: DS_MULTIARRAYED_HASH_TABLE [G, K]
			-- Hash table traversed

feature {DS_MULTIARRAYED_HASH_TABLE} -- Implementation

	next_cursor: detachable DS_MULTIARRAYED_HASH_TABLE_CURSOR [G, K]
			-- Next cursor
			-- (Used by `container' to keep track of traversing
			-- cursors (i.e. cursors associated with `container'
			-- and which are not currently `off').)

end
