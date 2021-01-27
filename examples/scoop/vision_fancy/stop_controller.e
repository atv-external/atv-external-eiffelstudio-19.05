note
	description: "Controller used to stop demo worker"
	date: "$Date: 2012-06-15 05:50:54 +0000 (Fri, 15 Jun 2012) $"
	revision: "$Revision: 88877 $"

class
	STOP_CONTROLLER

feature -- Element Change

	set_is_stopped (a_b: like is_stopped)
			-- Set `is_stopped' by `a_b'.
		do
			is_stopped := a_b
		end

feature -- Query

	is_stopped: BOOLEAN
			-- Is stopped?

;note
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
