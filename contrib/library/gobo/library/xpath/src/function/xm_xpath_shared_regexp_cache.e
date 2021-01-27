note

	description:

		"Objects that provide shared access to a singleton compiled regular expression cache"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_SHARED_REGEXP_CACHE

feature -- Access

	shared_regexp_cache: XM_XPATH_REGEXP_CACHE
			-- Shared instance
		once
			create Result.make
		end

end

