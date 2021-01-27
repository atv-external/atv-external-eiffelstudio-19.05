note

	description:

		"Shared XPath 64bit equality testers"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_SHARED_64BIT_TESTER

feature -- Access

	long_equality_tester: XM_XPATH_64BIT_TESTER
			-- 64bit equality tester
		once
			create Result
		ensure
			long_equality_tester_not_void: Result /= Void
		end

end
