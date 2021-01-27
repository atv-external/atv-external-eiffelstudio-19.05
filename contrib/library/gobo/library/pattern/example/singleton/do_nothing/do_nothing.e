note

	description:

		"Use singleton which does nothing"

	library: "Gobo Eiffel Pattern Library"
	copyright: "Copyright (c) 2003, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class DO_NOTHING

inherit

	SHARED_NULL_SINGLETON

	KL_SHARED_STANDARD_FILES

create

	make

feature {NONE} -- Initialization

	make
			-- Use the singleton.
		do
			singleton.do_nothing
			std.output.put_line ("Used singleton")
			if singleton_created then
				std.output.put_line ("Singleton created")
			end
			singleton.do_nothing
			std.output.put_line ("Used singleton again")
		end

end
