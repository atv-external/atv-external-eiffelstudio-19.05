note
	description : "Null error visitor"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"

class
	ERROR_NULL_VISITOR

inherit
	ERROR_VISITOR

feature -- Access

	process_error (e: ERROR)
		do
		end

	process_custom (e: ERROR_CUSTOM)
		do
		end

	process_group (g: ERROR_GROUP)
		do
		end

note
	copyright: "Copyright (c) 1984-2011, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
