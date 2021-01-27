note
	description: "Nested queries example."
	legal: "See notice at end of class."
	product: "EiffelStore"
	status: "See notice at end of class."
	date: "$Date: 2009-03-26 03:59:01 +0000 (Thu, 26 Mar 2009) $"
	revision: "$Revision: 77907 $"

class TEST_I inherit

	TEST

create

	make

feature

	select_string: STRING
		once
			Result := "sqltables()"
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


end -- class TEST_I


