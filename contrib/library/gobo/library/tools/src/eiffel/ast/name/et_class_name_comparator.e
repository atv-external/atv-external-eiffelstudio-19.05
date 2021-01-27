note

	description:

		"Class name comparators"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2006-2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 18:34:55 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100137 $"

class ET_CLASS_NAME_COMPARATOR

inherit

	KL_COMPARATOR [ET_CLASS_NAME]
		redefine
			less_than
		end

	KL_IMPORTED_STRING_ROUTINES
		export {NONE} all end

create

	make

feature {NONE} -- Initialization

	make
			-- Create a new comparator.
		do
		end

feature -- Status report

	less_than, attached_less_than (u, v: ET_CLASS_NAME): BOOLEAN
			-- Is `u' considered less than `v'?
		do
			Result := (STRING_.three_way_upper_case_comparison (u.name, v.name) = -1)
		end

end
