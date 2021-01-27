note
	description: "[
			Objects that ...
		]"
	author: "$Author: jfiat $"
	date: "$Date: 2015-07-10 10:22:54 +0000 (Fri, 10 Jul 2015) $"
	revision: "$Revision: 97684 $"

class
	CMS_STORAGE_NULL_BUILDER

inherit
	CMS_STORAGE_BUILDER

feature -- Factory

	storage (a_setup: CMS_SETUP; a_error_handler: ERROR_HANDLER): detachable CMS_STORAGE_NULL
		do
			create Result
		end

note
	copyright: "2011-2015, Jocelyn Fiat, Javier Velilla, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
end
