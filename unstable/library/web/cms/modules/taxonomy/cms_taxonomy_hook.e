note
	description: "Hook provided by module {CMS_TAXONOMY_MODULE}."
	date: "$Date: 2015-12-07 20:54:40 +0000 (Mon, 07 Dec 2015) $"
	revision: "$Revision: 98203 $"

deferred class
	CMS_TAXONOMY_HOOK

inherit
	CMS_HOOK

feature -- Hook

	populate_content_associated_with_term (t: CMS_TERM; a_contents: CMS_TAXONOMY_ENTITY_CONTAINER)
			-- Populate `a_contents' with taxonomy entity associated with term `t'.
		deferred
		end

end
