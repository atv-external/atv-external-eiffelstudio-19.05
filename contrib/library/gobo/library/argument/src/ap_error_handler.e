note

	description:

		"Universal error handlers for parsing arguments"

	library: "Gobo Eiffel Argument Library"
	copyright: "Copyright (c) 2006, Bernd Schoeller and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class AP_ERROR_HANDLER

inherit

	UT_ERROR_HANDLER
		redefine
			report_error_message
		end

create

	make_standard,
	make_null

feature -- Error detection

	has_error: BOOLEAN
			-- Has an error been detected?

	reset
			-- Reset `has_errors' to false.
		do
			has_error := False
		ensure
			reset: not has_error
		end

feature -- Error reporting

	report_error_message (an_error: STRING)
			-- Report `an_error'.
		do
			has_error := True
			Precursor (an_error)
		end

end
