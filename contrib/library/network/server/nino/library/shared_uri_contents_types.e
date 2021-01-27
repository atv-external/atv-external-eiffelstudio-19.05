note
	description: "Summary description for {SHARED_URI_CONTENTS_TYPES}."
	author: ""
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"

class
	SHARED_URI_CONTENTS_TYPES
feature

	ct_table: URI_CONTENTS_TYPES
		once
			create Result.make
		end
note
	copyright: "2011-2011, Javier Velilla and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
end
