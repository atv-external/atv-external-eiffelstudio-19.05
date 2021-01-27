note

	description:

		"Singleton4"

	library: "Gobo Eiffel Pattern Library"
	copyright: "Copyright (c) 2003, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class SINGLETON4

inherit

	ANY -- required by SE 2.1b1

	SHARED_SINGLETON4

create

	make

feature {NONE} -- Initialization

	make
			-- Create a singleton object.
		require
			singleton4_not_created: not singleton4_created
		do
			singleton4_cell.put (Current)
		end

invariant

	singleton4_created: singleton4_created
	singleton_pattern: Current = singleton4

end
