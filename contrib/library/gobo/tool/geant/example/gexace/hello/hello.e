note

	description:

		"Gobo Eiffel Ant Example Class"

	library: "Gobo Eiffel Ant"
	copyright: "Copyright (c) 2001, Sven Ehrke and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 17:45:00 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100135 $"


class HELLO

create

	make

feature {NONE} -- Initialization

	make
			-- Execute 'hello world'.
		do
			print ("Hello World%N")
		end

end
