note

	description:

		"Test examples mentioned in documentation for class ST_SCIENTIFIC_FORMATTER"

	test_status: "ok_to_run"
	library: "Gobo Eiffel String Library"
	copyright: "Copyright (c) 2004-2005, Object-Tools and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class ST_TEST_SCIENTIFIC_FORMATTER_EXAMPLES

inherit

	TS_TEST_CASE

	ST_FORMATTING_ROUTINES
		export {NONE} all end

create

	make_default

feature -- Test

	test_string_examples
			-- Some basic format strings.
		do
			assert_equal ("test1", "Hello, John", format ("$10s", <<"Hello, John">>))
			assert_equal ("test2", "Hello     ", format ("$-10.5s", <<"Hello, John">>))
			assert_equal ("test3", "  Hello   ", format ("$^10.5s", <<"Hello, John">>))
			assert_equal ("test4", "     Hello", format ("$10.5s", <<"Hello, John">>))
			assert_equal ("test5", "Hello, John", format ("$s", <<"Hello, John">>))
		end

	test_double_examples
			-- Test double examples.
		do
			assert_equal ("test1", "    3", format ("$5.0f", <<double_cell (3.1245621)>>))
			assert_equal ("test2", "3  ", format ("$-3.0f", <<double_cell (3.1245621)>>))
			assert_equal ("test3", " 3.125", format ("$6.3f", <<double_cell (3.1245621)>>))
			assert_equal ("test4", "3.124562e+00", format ("$8e", <<double_cell (3.1245621)>>))
		end

end