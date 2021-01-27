note

	description:

		"Test features of class CONCAT1"

	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-07 15:55:30 +0000 (Sat, 07 May 2016) $"
	revision: "$Revision: 98684 $"

class TEST_CONCAT1

inherit

	TS_TEST_CASE

create

	make_default

feature -- Test

	test_concat
			-- Test feature `concat'.
		local
			c: CONCAT1
		do
			create c.make
			assert_equal ("toto", "toto", c.concat ("to", "to"))
			assert_equal ("foobar", "foobar", c.concat ("foo", "bar"))
		end

end
