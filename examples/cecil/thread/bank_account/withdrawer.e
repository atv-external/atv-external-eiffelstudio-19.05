note
	description: "Objects that debit money from %
	% a shared bank account"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	author: ""
	date: "$Date: 2019-02-13 14:06:11 +0000 (Wed, 13 Feb 2019) $"
	revision: "$Revision: 102832 $"

class
	WITHDRAWER

inherit
	CUSTOMER
		rename 
			make_transaction as withdraw
		end
	
create
	make

feature -- Execution


	withdraw (m: INTEGER)
		do
			c_make_transaction (-m, c_account, thread_id)
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


end	-- class WITHDRAWER

