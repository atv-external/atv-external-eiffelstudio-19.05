note
	description: "Objects that ..."
	author: ""
	date: "$Date: 2010-08-05 10:21:27 +0000 (Thu, 05 Aug 2010) $"
	revision: "$Revision: 84113 $"

class
	SVN_SHARED_PREFERENCES


feature -- Access

	preferences: SVN_PREFERENCES
		once
			create Result
		end

end
