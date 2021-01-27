note
	description: "Objects that put money in shared bank account"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	author: ""
	date: "$Date: 2008-12-31 17:18:34 +0000 (Wed, 31 Dec 2008) $"
	revision: "$Revision: 76491 $"

class
	SAVER

inherit
	CUSTOMER
		rename 
			make_transaction as deposit
		redefine
			deposit
		end
create
	make

feature -- Execution
	
	deposit (m: INTEGER)
		do
			c_make_transaction (m, c_account)
		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"


end -- class SAVER

