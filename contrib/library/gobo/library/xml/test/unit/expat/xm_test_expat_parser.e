note

	description:

		"Test features of class XM_EXPAT_PARSER"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class XM_TEST_EXPAT_PARSER

inherit

	TS_TEST_CASE

create

	make_default

feature -- Test

	test_parse_empty_string
			-- Test feature `parse_from_string' with an empty input string.
		local
			a_parser: XM_EXPAT_PARSER
		do
			create a_parser.make
			a_parser.parse_from_string ("")
			assert ("not_correct", not a_parser.is_correct)
		end

end
