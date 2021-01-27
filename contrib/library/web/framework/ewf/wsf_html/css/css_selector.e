note
	description: "Summary description for {CSS_SELECTOR}."
	author: ""
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"

class
	CSS_SELECTOR

create
	make_from_string

convert
	make_from_string ({READABLE_STRING_8, STRING_8, IMMUTABLE_STRING_8})

feature {NONE} -- Initialization

	make_from_string (s: READABLE_STRING_8)
		do
			string := s
		end

feature -- Conversion

	string: READABLE_STRING_8

end
