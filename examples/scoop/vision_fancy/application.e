note
	description : "Root class to launch EV_APPLICATION and to show the main window"
	date        : "$Date: 2012-06-15 05:50:54 +0000 (Fri, 15 Jun 2012) $"
	revision    : "$Revision: 88877 $"

class
	APPLICATION

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_app: EV_APPLICATION
			l_main_window: MAIN_WINDOW
		do
			create l_app
			create l_main_window.make
			l_main_window.show
			l_app.launch
		end

note
	copyright: "Copyright (c) 1984-2012, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
