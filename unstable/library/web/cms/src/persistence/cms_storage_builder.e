note
	description: "[
			Objects that ...
		]"
	author: "$Author: jfiat $"
	date: "$Date: 2018-10-16 14:24:08 +0000 (Tue, 16 Oct 2018) $"
	revision: "$Revision: 102324 $"

deferred class
	CMS_STORAGE_BUILDER

feature -- Factory

	storage (a_setup: CMS_SETUP; a_error_handler: ERROR_HANDLER): detachable CMS_STORAGE
			-- CMS Storage object based on CMS setup `a_setup'.
		deferred
		end

note
	copyright: "2011-2018, Jocelyn Fiat, Javier Velilla, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
end
