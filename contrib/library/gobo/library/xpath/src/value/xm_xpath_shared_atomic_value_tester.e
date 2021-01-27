note

	description:

		"Shared XPath atomic-value equality testers"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_SHARED_ATOMIC_VALUE_TESTER

feature -- Access

	atomic_value_tester: XM_XPATH_ATOMIC_VALUE_TESTER
			-- Atomic_value equality tester
		once
			create Result
		ensure
			atomic_value_tester_not_void: Result /= Void
		end

end
