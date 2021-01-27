note
	description: "Summary description for {CMS_HOOK_IMPORT}."
	date: "$Date: 2017-01-27 18:00:20 +0000 (Fri, 27 Jan 2017) $"
	revision: "$Revision: 99767 $"

deferred class
	CMS_HOOK_IMPORT

inherit
	CMS_HOOK

feature -- Hook	

	import_from (a_import_id_list: detachable ITERABLE [READABLE_STRING_GENERAL]; a_import_ctx: CMS_IMPORT_CONTEXT; a_response: CMS_RESPONSE)
			-- Import data identified by `a_import_id_list',
			-- or import all data if `a_import_id_list' is Void.
		deferred
		end

note
	copyright: "2011-2017, Jocelyn Fiat, Javier Velilla, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
end
