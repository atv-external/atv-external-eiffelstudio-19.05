note
	description: "Summary description for {A}."
	author: ""
	date: "$Date: 2017-03-07 13:26:26 +0000 (Tue, 07 Mar 2017) $"
	revision: "$Revision: 99933 $"

class
	A

create
	make_with_name

feature {NONE} -- Initialization

	make_with_name (n: STRING)
		do
			name := n
			create items.make (0)
		end

feature -- Access

	name: STRING

	count: INTEGER

	items: ARRAYED_LIST [B]

feature -- Element change

	extend (b: B)
		do
			items.extend (b)
			count := items.count
		end

end

