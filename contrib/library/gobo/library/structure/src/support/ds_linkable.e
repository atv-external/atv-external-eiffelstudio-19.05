note

	description:

		"Linkable cells with a reference to their right neighbor"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 1999-2013, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class DS_LINKABLE [G]

inherit

	DS_CELL [G]

create

	make

feature -- Access

	right: detachable like Current
			-- Right neighbor

feature -- Element change

	put_right (other: like Current)
			-- Put `other' to right of cell.
		require
			other_not_void: other /= Void
		do
			right := other
		ensure
			linked: right = other
		end

	forget_right
			-- Remove right neighbor.
		do
			right := Void
		ensure
			forgotten: right = Void
		end

end
