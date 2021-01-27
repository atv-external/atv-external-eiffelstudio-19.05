note
	description: "Summary description for {DELEGATE}."
	author: ""
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

deferred class
	DELEGATE

inherit
	ANY
		undefine
			copy
		end

feature -- Access


feature {NS_OBJECT}

	item: POINTER
		deferred
		end

end
