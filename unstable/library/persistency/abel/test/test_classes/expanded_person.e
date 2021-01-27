note
	description: "Summary description for {EXPANDED_PERSON}."
	author: ""
	date: "$Date: 2013-11-13 17:29:47 +0000 (Wed, 13 Nov 2013) $"
	revision: "$Revision: 93350 $"

expanded class
	EXPANDED_PERSON

inherit
	TEST_PERSON
		redefine
			default_create
		end

create
	default_create, make

feature {NONE}

	default_create
		do
			make ("a", "b", 0)
		end

end
