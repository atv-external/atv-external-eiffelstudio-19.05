note
	description: " Unix epoch timestamp generator."
	author: ""
	date: "$Date: 2015-06-18 19:46:10 +0000 (Thu, 18 Jun 2015) $"
	revision: "$Revision: 97507 $"

deferred class
	TIMESTAMP_SERVICE


feature
	timestamp_in_seconds: STRING
			-- unix epoch timestamp in seconds
		deferred
		end

	nonce:STRING
			-- unique value for each request
		deferred
		end

note
	copyright: "2013-2013, Javier Velilla, Jocelyn Fiat, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
