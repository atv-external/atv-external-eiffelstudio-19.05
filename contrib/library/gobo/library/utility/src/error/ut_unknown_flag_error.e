note

	description:

		"Error: Unknown command-line flag"

	library: "Gobo Eiffel Utility Library"
	copyright: "Copyright (c) 1999-2011, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class UT_UNKNOWN_FLAG_ERROR

inherit

	UT_ERROR

create

	make

feature {NONE} -- Initialization

	make (a_flag: STRING)
			-- Create a new error reporting that
			-- `a_flag' is an unknown flag.
		require
			a_flag_not_void: a_flag /= Void
		do
			create parameters.make_filled (empty_string, 1, 1)
			parameters.put (a_flag, 1)
		end

feature -- Access

	default_template: STRING = "$0: unknown flag '$1'"
			-- Default template used to built the error message

	code: STRING = "UT0002"
			-- Error code

invariant

	-- dollar0: $0 = program name
	-- dollar1: $1 = flag

end
