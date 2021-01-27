note
	description: "Tooltip Notification (TTN) constants."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2008-12-29 20:27:11 +0000 (Mon, 29 Dec 2008) $"
	revision: "$Revision: 76420 $"

class
	WEL_TTN_CONSTANTS

feature -- Access

	Ttn_needtext: INTEGER
		external
			"C [macro %"cctrl.h%"]"
		alias
			"TTN_NEEDTEXT"
		end

	Ttn_pop: INTEGER
		external
			"C [macro %"cctrl.h%"]"
		alias
			"TTN_POP"
		end

	Ttn_show: INTEGER
		external
			"C [macro %"cctrl.h%"]"
		alias
			"TTN_SHOW"
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




end -- class WEL_TTN_CONSTANTS

