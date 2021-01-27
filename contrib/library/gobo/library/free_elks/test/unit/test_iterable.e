note

	description:

		"Test features of class ITERABLE"

	library: "FreeELKS Library"
	copyright: "Copyright (c) 2015, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class TEST_ITERABLE

inherit

	TS_TEST_CASE

create

	make_default

feature -- Test

	test_new_cursor_renaming
			-- Test when 'new_cursor' is renamed.
		local
			l_iterable: MY_ITERABLE [INTEGER]
		do
			create l_iterable.make (10, 20)
			assert_integers_equal ("renamed_new_cursor", 10, l_iterable.foo)
		end

end
