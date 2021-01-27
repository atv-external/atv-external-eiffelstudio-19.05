note
	description: "Summary description for {WSF_MIME_HANDLER_HELPER}."
	author: ""
	date: "$Date: 2015-11-05 20:52:56 +0000 (Thu, 05 Nov 2015) $"
	revision: "$Revision: 98081 $"

deferred class
	WSF_MIME_HANDLER_HELPER

inherit
	ANY

	WSF_VALUE_UTILITIES
		export
			{NONE} all
		end

feature {NONE} -- Implementation

	full_input_data (req: WSF_REQUEST): STRING_8
			-- Read or reused full input data from `req'.
		do
			create Result.make (0)
			req.read_input_data_into (Result)
		end

note
	copyright: "2011-2015, Jocelyn Fiat, Javier Velilla, Olivier Ligot, Colin Adams, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
