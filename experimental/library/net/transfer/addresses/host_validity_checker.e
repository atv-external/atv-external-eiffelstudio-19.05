note
	description:
		"Facility to check the validity of hosts"
	legal: "See notice at end of class."

	status: "See notice at end of class."
	date: "$Date: 2009-05-06 15:19:03 +0000 (Wed, 06 May 2009) $"
	revision: "$Revision: 78525 $"

class
	HOST_VALIDITY_CHECKER

feature -- Status report

	host_ok (h: STRING): BOOLEAN
			-- Is `h' a valid host?
		do
			if h /= Void and then not h.is_empty then
				Result := Host_charset.contains_string (h)
			end
		end

feature {NONE} -- Implementation

	Host_charset: CHARACTER_SET
			-- Character set for host names
		once
			create Result
			Result.define ("A-Za-z0-9\-.")
		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- class HOST_VALIDITY_CHECKER

