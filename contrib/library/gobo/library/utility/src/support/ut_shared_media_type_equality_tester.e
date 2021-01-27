note

	description:

		"Shared media type equality testers"

	library: "Gobo Eiffel Utility Library"
	copyright: "Copyright (c) 2005-2018, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class UT_SHARED_MEDIA_TYPE_EQUALITY_TESTER

feature -- Access

	media_type_tester: UT_MEDIA_TYPE_EQUALITY_TESTER
			-- Media type equality tester
		once
			create Result
		ensure
			instance_free: class
			media_type_tester_not_void: Result /= Void
		end

end
