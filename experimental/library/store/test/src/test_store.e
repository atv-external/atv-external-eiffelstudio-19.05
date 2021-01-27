note
	description : "Objects that ..."
	author: "$Author: manus $"
	date: "$Date: 2014-04-30 20:51:07 +0000 (Wed, 30 Apr 2014) $"
	revision: "$Revision: 94963 $"

class
	TEST_STORE

inherit
	ANY

create
	make

feature {NONE} -- Initialization

	make
			-- Initialize `Current'.
		local
			t: TEST_LARGE_DATA
		do
			create t
			t.test_large_string
		end

end
