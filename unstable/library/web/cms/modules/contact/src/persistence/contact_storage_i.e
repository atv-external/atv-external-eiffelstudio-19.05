note
	description: "[
			Persistence interface for CONTACT_MODULE.
		]"
	author: "$Author: jfiat $"
	date: "$Date: 2016-01-22 20:51:35 +0000 (Fri, 22 Jan 2016) $"
	revision: "$Revision: 98430 $"

deferred class
	CONTACT_STORAGE_I

feature -- Error Handling

	error_handler: ERROR_HANDLER
			-- Error handler.
		deferred
		end

feature -- Access

feature -- Change

	save_contact_message (m: CONTACT_MESSAGE)
		deferred
		end

end
