note

	description:

		"Routines for performing full case mapping on Unicode strings"

	remark: "[
		These routines will not work on UTF-16 strings - they will
		need a few modifications to account of surrogates.
	]"
	library: "Gobo Eiffel String Library"
	copyright: "Copyright (c) 2007, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ST_UNICODE_FULL_CASE_MAPPING

inherit

	ST_UNICODE_V510_FULL_CASE_MAPPING

end
