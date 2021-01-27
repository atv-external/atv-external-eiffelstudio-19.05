note
	description: "An exception when dividing by zero"
	author: "Colin LeMahieu"
	date: "$Date: 2013-01-23 14:05:11 +0000 (Wed, 23 Jan 2013) $"
	revision: "$Revision: 90816 $"
	quote: "A right is not what someone gives you; it's what no one can take from you. -  Ramsey Clark, U.S. Attorney General, New York Times, 10/02/77"

class
	DIVIDE_BY_ZERO

inherit
	DEVELOPER_EXCEPTION
		redefine
			tag
		end

feature -- Access

	tag: IMMUTABLE_STRING_32
		once
			create Result.make_from_string_8 ("Divide by zero.")
		end

end
