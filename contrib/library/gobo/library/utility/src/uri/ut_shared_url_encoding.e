note

	description:

		"Shared instance of UT_URL_ENCODING"

	library: "Gobo Eiffel Utility Library"
	author: "Copyright (c) 2004-2018, Eric Bezault and others"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class UT_SHARED_URL_ENCODING

feature -- Access

	Url_encoding: UT_URL_ENCODING
			-- Shared instance of URL encoding routines
		once
			create Result
		ensure
			instance_free: class
			url_encoding_not_void: Result /= Void
		end

end
