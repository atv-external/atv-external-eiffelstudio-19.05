note
	description: "Summary description for {ORACLE_SQL_STRING}."
	author: ""
	date: "$Date: 2015-03-06 14:15:32 +0000 (Fri, 06 Mar 2015) $"
	revision: "$Revision: 96788 $"

class
	ORACLE_SQL_STRING

inherit
	SQL_ABSTRACT_STRING

create
	make,
	make_empty,
	make_by_pointer,
	make_by_pointer_and_count,
	make_shared_from_pointer,
	make_shared_from_pointer_and_count,
	own_from_pointer,
	own_from_pointer_and_count

feature -- Measurement

	character_size: INTEGER = 1
			-- Size of a character

feature {NONE} -- Implementation

	c_strlen (ptr: POINTER): INTEGER
			-- | FIXME: This should be refactored into odbc implementation.
		external
			"C inline"
		alias
			"return strlen($ptr);"
		end

end
