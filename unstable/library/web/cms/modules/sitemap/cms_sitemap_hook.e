note
	description: "Hook provided by module {CMS_RECENT_CHANGES_MODULE}."
	date: "$Date: 2017-02-10 11:36:08 +0000 (Fri, 10 Feb 2017) $"
	revision: "$Revision: 99814 $"

deferred class
	CMS_SITEMAP_HOOK

inherit
	CMS_HOOK

feature -- Invocation

	populate_sitemap (a_sitemap: CMS_SITEMAP)
			-- Populate `a_sitemap`.
		deferred
		end

end
