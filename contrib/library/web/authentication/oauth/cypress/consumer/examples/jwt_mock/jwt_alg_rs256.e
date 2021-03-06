note
	description: "Object Represent a Mock JWT Algorithm with Name RS256 and Digital Signature Algorithm"
	date: "$Date: 2019-02-07 15:35:22 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102803 $"

class
	JWT_ALG_RS256
inherit

	JWT_ALG

feature -- Access

	name: STRING = "RS256"

	encoded_string (a_message: READABLE_STRING_8; a_secret: READABLE_STRING_8): STRING
		do
			Result := ""
		end
note
	copyright: "2013-2018, Javier Velilla, Jocelyn Fiat, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end