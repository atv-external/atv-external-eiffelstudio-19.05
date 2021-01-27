note

	description:

		"PCRE regular expressions"

	library: "Gobo Eiffel Regexp Library"
	copyright: "Copyright (c) 2001-2002, Harald Erdbruegger and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class RX_PCRE_REGULAR_EXPRESSION

inherit

	RX_REGULAR_EXPRESSION
		undefine
			wipe_out
		end

	RX_PCRE_MATCHER

create

	make

end
