note

	description:

		"Singleton XSLT pattern that matches any node"

	library: "Gobo Eiffel XXLT Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XSLT_SHARED_ANY_NODE_TEST

feature -- Access

	any_xslt_node_test: XM_XSLT_ANY_NODE_TEST
			-- Singleton
		once
			create Result.make
		end

end

