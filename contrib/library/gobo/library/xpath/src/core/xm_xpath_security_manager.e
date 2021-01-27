note

	description:

		"Objects that make security decisions"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2005, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class XM_XPATH_SECURITY_MANAGER

feature -- Access

	is_uri_permitted (an_absolute_uri: UT_URI): BOOLEAN
			-- Is reading permitted from `an_absolute_uri'?
		require
			absolute_uri: an_absolute_uri /= Void and then an_absolute_uri.is_absolute
		deferred
		end

end

