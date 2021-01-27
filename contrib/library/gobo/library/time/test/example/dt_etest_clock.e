note

	description:

		"Test 'clock' example"

	library: "Gobo Eiffel Time Library"
	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class DT_ETEST_CLOCK

inherit

	EXAMPLE_TEST_CASE

create

	make_default

feature -- Access

	program_name: STRING = "clock"
			-- Program name

	library_name: STRING = "time"
			-- Library name of example

feature -- Test

	test_clock
			-- Test 'clock' example.
		local
			clock_exe: STRING
		do
			compile_program
				-- Run example.
			clock_exe := program_exe
			assert_execute (clock_exe + output_log)
			assert_integers_equal ("no_error_log", 0, file_system.file_count (error_log_filename))
		end

end
