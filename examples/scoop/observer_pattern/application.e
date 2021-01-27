note
	description : "observer_pattern application root class"
	date        : "$Date: 2010-11-10 08:54:08 +0000 (Wed, 10 Nov 2010) $"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_degree: DEGREE_5
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
			create l_degree
			l_degree.start
		end

end
