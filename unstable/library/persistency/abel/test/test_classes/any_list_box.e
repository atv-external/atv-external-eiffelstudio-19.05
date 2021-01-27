note
	description: "Summary description for {ANY_LIST_BOX}."
	author: ""
	date: "$Date: 2013-12-14 00:20:32 +0000 (Sat, 14 Dec 2013) $"
	revision: "$Revision: 93724 $"

class
	ANY_LIST_BOX

create
	set_items

feature

	items: LINKED_LIST [ANY]

	set_items (an_item: LINKED_LIST [ANY])
		do
			items := an_item
		end


end
