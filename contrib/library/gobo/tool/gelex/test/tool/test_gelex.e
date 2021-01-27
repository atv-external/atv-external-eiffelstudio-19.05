note

	description:

		"Test 'gelex'"

	copyright: "Copyright (c) 2001-2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class TEST_GELEX

inherit

	TOOL_TEST_CASE

create

	make_default

feature -- Access

	program_name: STRING = "gelex"
			-- Program name

feature -- Test

	test_gelex
			-- Test 'gelex'.
		do
			compile_program
		end

end
