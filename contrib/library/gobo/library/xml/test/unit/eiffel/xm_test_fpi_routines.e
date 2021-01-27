note

	description:

		"Test fpi routines"

	library: "Gobo Eiffel XML test suite"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class XM_TEST_FPI_ROUTINES

inherit

	TS_TEST_CASE

	XM_FORMAL_PUBLIC_IDENTIFIER_ROUTINES

	KL_IMPORTED_STRING_ROUTINES

create

	make_default

feature -- Access

	Docbook_fpi: STRING = "-//OASIS//DTD DocBook XML V4.1.2//EN"

feature -- Tests

	test_normalization
			-- Test normalizing an fpi
		local
			an_fpi: STRING
		do
			an_fpi := "%N%N   -//OASIS//DTD DocBook   XML %T V4.1.2//EN  %R"
			an_fpi := normalized_fpi (an_fpi)
			assert ("Fpi normalized", STRING_.same_string (an_fpi, Docbook_fpi))
			an_fpi := normalized_fpi (an_fpi)
			assert ("Idempotent", STRING_.same_string (an_fpi, Docbook_fpi))
		end

	test_urn_to_fpi
			-- Test decoding a publicid URN.
		do
			assert ("URN decoded", STRING_.same_string (urn_to_fpi ("urn:publicid:-:OASIS:DTD+DocBook+XML+V4.1.2:EN"), "-//OASIS//DTD DocBook XML V4.1.2//EN"))
		end

end

