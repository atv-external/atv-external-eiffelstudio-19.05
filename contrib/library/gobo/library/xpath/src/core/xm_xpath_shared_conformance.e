note

	description:

		"Shared access to conformance to XPath, XQuery and XSLT standards"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_SHARED_CONFORMANCE

feature -- Access

	conformance: XM_XPATH_CONFORMANCE
			-- The shared conformance object
		once
			create Result
		end

end
