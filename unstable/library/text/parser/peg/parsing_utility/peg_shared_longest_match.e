note
	description: "[
		Sharing a PEG_LONGEST_MATCH object.
	]"
	legal: "See notice at end of class."
	status: "Pre-release"
	date: "$Date: 2009-08-24 18:13:02 +0000 (Mon, 24 Aug 2009) $"
	revision: "$Revision: 80405 $"

class
	PEG_SHARED_LONGEST_MATCH

feature -- Access

	longest_match: PEG_LONGEST_MATCH
			-- Captures the furthest index the parser could get to
		once
			create Result.make
		end

end
