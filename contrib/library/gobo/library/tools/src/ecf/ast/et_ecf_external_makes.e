note

	description:

		"ECF external make lists"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class ET_ECF_EXTERNAL_MAKES

inherit

	ET_ECF_EXTERNAL_PATHNAMES
		rename
			fill_external_values as fill_external_makes
		redefine
			external_value
		end

create

	make, make_empty

feature -- Access

	external_value (i: INTEGER): ET_ECF_EXTERNAL_MAKE
			-- `i'-th external make
		do
			Result := external_values.item (i)
		end

end
