note

	description:

		"Reverse total order comparators"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2001-2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class KL_REVERSE_COMPARATOR [G]

inherit

	KL_REVERSE_PART_COMPARATOR [G]
		redefine
			comparator
		end

	KL_COMPARATOR [G]

create

	make

feature -- Access

	comparator: KL_COMPARATOR [G]
			-- Base comparator

end
