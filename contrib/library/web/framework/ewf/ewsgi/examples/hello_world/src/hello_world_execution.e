note
	description: "Summary description for {HELLO_WORLD_EXECUTION}."
	author: ""
	date: "$Date: 2016-10-11 15:43:35 +0000 (Tue, 11 Oct 2016) $"
	revision: "$Revision: 99282 $"

class
	HELLO_WORLD_EXECUTION

inherit
	WGI_EXECUTION

create
	make

feature {NONE} -- Initialization

	execute
		do
			response.set_status_code (200, Void)
			response.put_header_text ("Content-Length: 13%R%NContent-Type: text/plain%R%N")
			response.put_string ("Hello World!%N")
		end

note
	copyright: "2011-2016, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end

