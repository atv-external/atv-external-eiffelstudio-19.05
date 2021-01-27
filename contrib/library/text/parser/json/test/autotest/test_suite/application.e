note
	description: "test_suite application root class"
	date: "$Date: 2014-11-17 10:54:05 +0000 (Mon, 17 Nov 2014) $"
	revision: "$Revision: 96099 $"

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
