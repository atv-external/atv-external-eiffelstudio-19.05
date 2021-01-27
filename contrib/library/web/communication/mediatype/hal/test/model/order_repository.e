note
	description: "Summary description for {ORDER_REPOSITORY}."
	author: ""
	date: "$Date: 2017-06-20 16:10:43 +0000 (Tue, 20 Jun 2017) $"
	revision: "$Revision: 100533 $"

class
	ORDER_REPOSITORY

create
	make

feature {NONE} -- Initialization

	make
		do
			create repo.make (10)
			current_id := 0
			next_id := 1
		end

feature -- Access

	current_id: INTEGER

	next_id: INTEGER

	save (a_order: ORDER)
		do
			repo.force (a_order, next_id)
			current_id := next_id
			next_id := next_id + 1
		end

feature {NONE} -- implementation

	repo: HASH_TABLE [ORDER, INTEGER]

end
