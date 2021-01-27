note
	description: "Objects to access the shared once WSF_PERCENT_ENCODER ..."
	date: "$Date: 2013-06-13 07:59:15 +0000 (Thu, 13 Jun 2013) $"
	revision: "$Revision: 92691 $"

class
	SHARED_WSF_PERCENT_ENCODER

feature -- Encoder

	percent_encoder: WSF_PERCENT_ENCODER
			-- Shared Percent encoding engine.
		once
			create Result
		end

note
	copyright: "2011-2013, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end
