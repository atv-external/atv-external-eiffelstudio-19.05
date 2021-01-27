note
	description: "test application root class"
	date: "$Date: 2018-11-16 13:29:33 +0000 (Fri, 16 Nov 2018) $"
	revision: "$Revision: 102478 $"

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
