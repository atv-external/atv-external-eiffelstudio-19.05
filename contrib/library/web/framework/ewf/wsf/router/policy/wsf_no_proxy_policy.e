note

	description: "[
						Policy that no client ever need use a proxy.

						Users of this policy cannot safely use chunked transfer-encoding, or any
						HTTP/1.1-specific features. So best used only for examples.
						]"

	date: "$Date: 2013-09-06 13:59:05 +0000 (Fri, 06 Sep 2013) $"
	revision: "$Revision: 92915 $"

class WSF_NO_PROXY_POLICY

inherit

	WSF_PROXY_USE_POLICY
		redefine
			requires_proxy
		end

feature -- Access

	requires_proxy (req: WSF_REQUEST): BOOLEAN
			-- Does `req' require use of `proxy_server'?
		do
		end

	proxy_server (req: WSF_REQUEST): URI
			-- Absolute URI of proxy server which `req' must use
		do
			create Result.make_from_string ("")
				-- doesn't meet the postcondition, but the precondition is never true.
		end

note
	copyright: "2011-2013, Jocelyn Fiat, Javier Velilla, Olivier Ligot, Colin Adams, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
