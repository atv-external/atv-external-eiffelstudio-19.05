note
	description: "Summary description for {EXPANDED_PERSON_CONTAINER}."
	author: ""
	date: "$Date: 2013-10-18 22:40:25 +0000 (Fri, 18 Oct 2013) $"
	revision: "$Revision: 93147 $"

class
	EXPANDED_PERSON_CONTAINER

create
	set_item

feature

	person: EXPANDED_PERSON

	integer: INTEGER

	item: ANY

	set_item (an_item: ANY)
		do
			item := an_item
		end

end
