note

	description:

		"Test features of class IDENTIFIED_ROUTINES"

	library: "FreeELKS Library"
	copyright: "Copyright (c) 2007, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class TEST_IDENTIFIED_ROUTINES

inherit

	TS_TEST_CASE

create

	make_default

feature -- Test

	test_eif_id_object
			-- Test feature 'eif_id_object'.
		local
			ir: IDENTIFIED_ROUTINES
			i: INTEGER
			s: STRING
		do
			create ir
			s := "gobo"
			i := ir.eif_object_id (s)
			assert_same ("object1", s, ir.eif_id_object (i))
		end

end
