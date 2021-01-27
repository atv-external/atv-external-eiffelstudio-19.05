note
	description: "Objects that ..."
	author: ""
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

class

	ADDRINFO_2

inherit

	ADDRINFO_1
		redefine
			c_free
		end

create

	make_from_external

feature {NONE} -- Externals

	c_free (obj_ptr: POINTER)
		do
		end

end

