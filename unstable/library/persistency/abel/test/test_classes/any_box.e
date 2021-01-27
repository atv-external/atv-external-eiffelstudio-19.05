note
	description: "Summary description for {ANY_BOX}."
	author: ""
	date: "$Date: 2013-10-07 19:35:47 +0000 (Mon, 07 Oct 2013) $"
	revision: "$Revision: 93079 $"

class
	ANY_BOX
create
	set_item

feature

	item: ANY

	set_item (an_item: ANY)
		do
			item := an_item
		end

end
