note
	description: "Command object that generates an OAuth Authorization header to include in the request"
	author: ""
	date: "$Date: 2015-06-22 18:24:27 +0000 (Mon, 22 Jun 2015) $"
	revision: "$Revision: 97517 $"

deferred class
	HEADER_EXTRACTOR

feature -- Extractor

	extract (request: OAUTH_REQUEST): STRING
			-- Generates an OAuth 'Authorization' Http header to include in requests as the signature.
		deferred
		end

note
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
