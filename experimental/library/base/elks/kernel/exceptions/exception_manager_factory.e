note
	description: "Exception manager factory."
	library: "Free implementation of ELKS library"
	status: "See notice at end of class."
	legal: "See notice at end of class."
	date: "$Date: 2019-05-08 11:07:18 +0000 (Wed, 08 May 2019) $"
	revision: "$Revision: 103139 $"

class
	EXCEPTION_MANAGER_FACTORY

feature -- Access

	exception_manager: EXCEPTION_MANAGER
			-- Exception manager
		external
			"built_in static"
		ensure
			instance_free: class
			exception_manager_not_void: Result /= Void
		end

note
	copyright: "Copyright (c) 1984-2018, Eiffel Software and others"
	license:   "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end
