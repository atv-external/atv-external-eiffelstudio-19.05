note
	description : "tests application root class"
	date        : "$Date: 2016-03-11 14:24:29 +0000 (Fri, 11 Mar 2016) $"
	revision    : "$Revision: 98564 $"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			--| Add your code here
			print ("Hello Eiffel World!%N")
		end

end
