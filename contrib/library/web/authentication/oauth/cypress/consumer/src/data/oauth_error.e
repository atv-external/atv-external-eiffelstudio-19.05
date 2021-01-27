note
	description: "Summary description for {OAUTH_ERROR}."
	author: ""
	date: "$Date: 2015-06-22 18:24:27 +0000 (Mon, 22 Jun 2015) $"
	revision: "$Revision: 97517 $"

class
	OAUTH_ERROR

create
	make

feature {NONE} --Initialization

	make (a_description: READABLE_STRING_GENERAL)
		do
			description := a_description.as_string_32
		ensure
			description_set: a_description.same_string (description)
		end

feature -- Access

	description: READABLE_STRING_32
			-- Error description

;note
	copyright: "2013-2015, Javier Velilla, Jocelyn Fiat, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
