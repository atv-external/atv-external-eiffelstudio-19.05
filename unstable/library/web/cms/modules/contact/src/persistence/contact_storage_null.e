note
	description: "[
			Objects that ...
		]"
	author: "$Author: jfiat $"
	date: "$Date: 2016-01-22 20:51:35 +0000 (Fri, 22 Jan 2016) $"
	revision: "$Revision: 98430 $"

class
	CONTACT_STORAGE_NULL

inherit
	CONTACT_STORAGE_I

create
	make

feature {NONE} -- Initialization

	make
			-- Initialize `Current'.
		do
			create error_handler.make
		end

feature -- Error Handling

	error_handler: ERROR_HANDLER
			-- Error handler.	

feature -- Access

feature -- Change

	save_contact_message (m: CONTACT_MESSAGE)
		do
		end

end
