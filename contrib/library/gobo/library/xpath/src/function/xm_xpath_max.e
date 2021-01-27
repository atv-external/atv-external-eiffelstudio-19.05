note

	description:

		"Objects that implement the XPath max() function"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_MAX

inherit

	XM_XPATH_MINIMAX_ROUTINES

create

	make

feature {NONE} -- Initialization

	make
			-- Establish invariant
		do
			name := "max"; namespace_uri := Xpath_standard_functions_uri
			fingerprint := Max_function_type_code
			minimum_argument_count := 1
			maximum_argument_count := 2
			create arguments.make (2)
			arguments.set_equality_tester (expression_tester)
			is_max := True
			initialized := True
		end

end

