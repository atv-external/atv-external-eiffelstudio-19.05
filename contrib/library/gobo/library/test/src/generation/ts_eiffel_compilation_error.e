note

	description:

		"Error: Eiffel compilation error"

	library: "Gobo Eiffel Test Library"
	copyright: "Copyright (c) 2001-2011, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-07 15:55:30 +0000 (Sat, 07 May 2016) $"
	revision: "$Revision: 98684 $"

class TS_EIFFEL_COMPILATION_ERROR

inherit

	UT_ERROR

create

	make

feature {NONE} -- Initialization

	make
			-- Create a new error reporting that an Eiffel
			-- compilation error occurred.
		do
			create parameters.make_filled (empty_string, 1, 0)
		end

feature -- Access

	default_template: STRING = "Eiffel compilation error"
			-- Default template used to built the error message

	code: STRING = "TS0002"
			-- Error code

invariant

--	dollar0: $0 = program name

end
