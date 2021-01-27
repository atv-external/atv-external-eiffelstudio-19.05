note
	description: "Objects that represent an OAUTH verifier"
	author: ""
	date: "$Date: 2015-06-22 18:24:27 +0000 (Mon, 22 Jun 2015) $"
	revision: "$Revision: 97517 $"

class
	OAUTH_VERIFIER

create
	make

feature {NONE} --Initialization

	make (a_value: READABLE_STRING_GENERAL)
		local
			utf: UTF_CONVERTER
		do
			if a_value.is_valid_as_string_8 then
				value := a_value.to_string_8
			else
				-- TODO: check if a_value could really be unicode.
				value := utf.utf_32_string_to_utf_8_string_8 (a_value)
			end
		ensure
			value_set: value = a_value
		end

feature -- Access

	value: READABLE_STRING_8

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
