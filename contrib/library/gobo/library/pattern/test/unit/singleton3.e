note

	description:

		"Singleton3"

	library: "Gobo Eiffel Pattern Library"
	copyright: "Copyright (c) 2003, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class SINGLETON3

inherit

	ANY -- required by SE 2.1b1

	SHARED_SINGLETON3

create

	make

feature {NONE} -- Initialization

	make
			-- Create a singleton object.
		require
			singleton3_not_created: not singleton3_created
		do
			singleton3_cell.put (Current)
		end

invariant

	singleton3_created: singleton3_created
	singleton_pattern: Current = singleton3

end
