note
	description: "Fork shared by two philosopers."
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date: 2013-11-12 20:01:16 +0000 (Tue, 12 Nov 2013) $"
	revision: "$Revision: 93324 $"

class
	FORK

create
	make

feature -- Initialization

	make (left, right: NATURAL)
			-- Initialize between philosophers `left' and `right'.
		do
			id := left.out + "F" + right.out
		end

feature -- Access

	id: STRING
			-- Identification: `F' enclosed by adjacent philosopher id's.

feature -- Basic operations

	pick (philosopher: separate PHILOSOPHER)
			-- Report fork picked up.
		do
			print ("Fork " + id + " picked up by Philosopher " + philosopher.id.out + ".%N")
		end

	put (philosopher: separate PHILOSOPHER)
			-- Report fork put back.
		do
			print ("Fork " + id + " put back by Philosopher " + philosopher.id.out + ".%N")
		end

note
	copyright: "Copyright (c) 2012, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end
