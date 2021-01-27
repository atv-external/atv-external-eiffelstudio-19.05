note

	description:

		"Test 'rpcalc' example"

	library: "Gobo Eiffel Parse Library"
	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class PR_ETEST_RPCALC

inherit

	EXAMPLE_TEST_CASE

create

	make_default

feature -- Access

	program_name: STRING = "rpcalc"
			-- Program name

	library_name: STRING = "parse"
			-- Library name of example

feature -- Test

	test_rpcalc
			-- Test 'rpcalc' example.
		do
			compile_program
		end

end
