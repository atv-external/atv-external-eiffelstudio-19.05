note

	description:

		"Singleton object that fail to match against any node"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_SHARED_NO_NODE_TEST

feature -- Access

	empty_item: XM_XPATH_NO_NODE_TEST
			-- Singleton
		once
			create Result.make
		end

end
