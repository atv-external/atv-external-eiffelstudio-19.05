note
	description: 
		"Vision2 widget test application"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	keywords: "test"
	date: "$Date: 2008-12-31 17:18:34 +0000 (Wed, 31 Dec 2008) $"
	revision: "$Revision: 76491 $"
	
class
	WIDGETS

inherit
	EV_APPLICATION 

create
	start

feature -- Initialization

	main_window: MAIN_WINDOW
		-- The window used in `Current'.

	start
			-- Create the application, set up `main_window'
			-- and then launch the application.
		do
			default_create
			create main_window
			launch
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


end
