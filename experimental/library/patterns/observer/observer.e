note
	description: "Observer of an entity."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	author: "Reda Kolli & Pascalf"
	date: "$Date: 2009-03-31 12:26:41 +0000 (Tue, 31 Mar 2009) $"
	revision: "$Revision: 77994 $"

deferred class
	OBSERVER

feature -- Update

	update
			-- Update Current when the entity is possibly modified.
		deferred
		end

note
	copyright:	"Copyright (c) 1984-2009, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"




end -- class OBSERVER


