note

	description:

		"Indexed cursors for data structure traversals"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 1999, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class DS_INDEXED_CURSOR [G]

inherit

	DS_CURSOR [G]

feature -- Access

	index: INTEGER
			-- Index of current position
		deferred
		ensure
			valid_index: valid_index (Result)
		end

feature -- Status report

	valid_index (i: INTEGER): BOOLEAN
			-- Is `i' a valid index value?
		deferred
		end

feature -- Cursor movement

	go_i_th (i: INTEGER)
			-- Move cursor to `i'-th position.
		require
			valid_index: valid_index (i)
		deferred
		ensure
			moved: index = i
		end

end
