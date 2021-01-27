note
	description: "An exception when a {STRING} couldn't be parsed in to a {INTEGER_X}"
	author: "Colin LeMahieu"
	date: "$Date: 2013-01-23 14:05:11 +0000 (Wed, 23 Jan 2013) $"
	revision: "$Revision: 90816 $"
	quote: "Heresy is only another word for freedom of thought. -  Graham Greene (1904-1991)"

class
	INTEGER_X_STRING_EXCEPTION

inherit
	DEVELOPER_EXCEPTION
		redefine
			tag
		end

feature -- Access

	tag: IMMUTABLE_STRING_32
		once
			create Result.make_from_string_8 ("Error parsing string as INTEGER_X.")
		end

end
