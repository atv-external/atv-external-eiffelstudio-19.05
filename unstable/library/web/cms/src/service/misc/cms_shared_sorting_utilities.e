note
	description: "Collection of sorters to help CMS dev."
	date: "$Date: 2015-08-04 14:46:57 +0000 (Tue, 04 Aug 2015) $"
	revision: "$Revision: 97769 $"

deferred class
	CMS_SHARED_SORTING_UTILITIES

feature -- Helpers

	string_sorter: QUICK_SORTER [READABLE_STRING_GENERAL]
			-- New string sorter.
		once
			create Result.make (create {COMPARABLE_COMPARATOR [READABLE_STRING_GENERAL]})
		end

note
	copyright: "2011-2015, Jocelyn Fiat, Javier Velilla, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
end
