note

	description:

		"Comparators based on COMPARABLE"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2000-2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 18:34:55 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100137 $"

class KL_COMPARABLE_COMPARATOR [G -> detachable COMPARABLE]

inherit

	KL_COMPARATOR [G]

create

	make

feature {NONE} -- Initialization

	make
			-- Create a new comparator.
		do
		end

feature -- Status report

	attached_less_than (u, v: attached G): BOOLEAN
			-- Is `u' considered less than `v'?
		do
			Result := (u < v)
		end

end
