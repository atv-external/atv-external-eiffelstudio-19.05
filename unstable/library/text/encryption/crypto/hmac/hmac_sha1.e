note
	description: "Summary description for {HMAC_SHA1}."
	date: "$Date: 2013-09-11 08:51:12 +0000 (Wed, 11 Sep 2013) $"
	revision: "$Revision: 92930 $"
	quote: "The bureaucracy is expanding to meet the needs of an expanding bureaucracy."

class
	HMAC_SHA1

inherit
	HMAC [SHA1]

create
	make,
	make_ascii_key,
	make_hexadecimal_key

feature {NONE} -- Implementation

	new_message_hash: like message_hash
		do
			create Result.make
		end

note
	copyright: "Copyright (c) 1984-2013, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
