note
	description: "Hook provided by module {CMS_RECENT_CHANGES_MODULE}."
	date: "$Date: 2015-09-03 12:50:07 +0000 (Thu, 03 Sep 2015) $"
	revision: "$Revision: 97904 $"

deferred class
	CMS_RECENT_CHANGES_HOOK

inherit
	CMS_HOOK

feature -- Invocation

	recent_changes_sources: detachable LIST [READABLE_STRING_8]
			-- Source provided by Current hook.
		deferred
		end

	populate_recent_changes (a_changes: CMS_RECENT_CHANGE_CONTAINER; a_current_user: detachable CMS_USER)
			-- Populate recent changes inside `a_changes' according to associated parameters.
		deferred
		end

end
