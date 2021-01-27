note

	description: "Nested queries example."
	legal: "See notice at end of class.";
	product: "EiffelStore";
	database: "Sybase";
	status: "See notice at end of class.";
	date: "$Date: 2008-12-31 17:18:34 +0000 (Wed, 31 Dec 2008) $";
	revision: "$Revision: 76491 $";
	author: "Patrice Khawam"

class TEST_I inherit

	TEST

create

	make

feature

	select_string: STRING
		once
			Result := "select name, id from sysobjects"
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


