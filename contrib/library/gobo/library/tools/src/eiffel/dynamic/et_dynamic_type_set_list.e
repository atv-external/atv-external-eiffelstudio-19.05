note

	description:

		"Lists of Eiffel dynamic type sets"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2004, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_DYNAMIC_TYPE_SET_LIST

inherit

	ET_TAIL_LIST [ET_DYNAMIC_TYPE_SET]

create

	make, make_with_capacity

feature {NONE} -- Implementation

	fixed_array: KL_SPECIAL_ROUTINES [ET_DYNAMIC_TYPE_SET]
			-- Fixed array routines
		once
			create Result
		end

end
