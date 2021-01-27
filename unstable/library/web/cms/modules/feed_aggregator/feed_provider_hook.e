note
	description: "Summary description for {FEED_HOOK}."
	date: "$Date: 2018-04-27 17:16:56 +0000 (Fri, 27 Apr 2018) $"
	revision: "$Revision: 101684 $"

deferred class
	FEED_PROVIDER_HOOK

inherit
	CMS_HOOK

feature -- Invocation

	feed (a_location: READABLE_STRING_8): detachable FEED
			-- Feed associated with `a_location`.
		deferred
		end

end
