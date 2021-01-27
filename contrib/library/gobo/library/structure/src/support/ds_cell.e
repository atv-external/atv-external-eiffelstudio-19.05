note

	description:

		"Cells containing an item"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 1999-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class DS_CELL [G]

create

	make

feature -- Access

	item: G
			-- Content of cell

feature -- Status report

	has_void: BOOLEAN
			-- Does cell include Void?
		do
			Result := (item = Void)
		ensure
			item_void: (item = Void) implies Result
		end

feature -- Element change

	put, make (v: G)
			-- Insert `v' in cell.
		do
			item := v
		ensure
			inserted: {KL_TYPE [G]}.same_objects (item, v)
		end

end
