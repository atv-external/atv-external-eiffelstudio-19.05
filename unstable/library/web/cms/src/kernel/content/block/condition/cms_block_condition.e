note
	description: "Condition for block to be displayed."
	date: "$Date: 2015-10-09 17:56:51 +0000 (Fri, 09 Oct 2015) $"
	revision: "$Revision: 97975 $"

deferred class
	CMS_BLOCK_CONDITION

feature -- Access

	description: READABLE_STRING_32
		deferred
		end

feature -- Evaluation

	satisfied_for_response (res: CMS_RESPONSE): BOOLEAN
		deferred
		end

note
	copyright: "2011-2015, Jocelyn Fiat, Javier Velilla, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
end
