note

	description:

		"Shared feature name equality testers"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class ET_SHARED_FEATURE_NAME_TESTER

feature -- Access

	feature_name_tester: ET_FEATURE_NAME_TESTER
			-- Feature name equality tester
		once
			create Result
		ensure
			instance_free: class
			feature_name_tester_not_void: Result /= Void
		end

end
