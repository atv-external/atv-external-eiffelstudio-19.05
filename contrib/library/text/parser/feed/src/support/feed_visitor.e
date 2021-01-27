note
	description: "Interface to visit Feed objects."
	date: "$Date: 2015-10-08 08:45:13 +0000 (Thu, 08 Oct 2015) $"
	revision: "$Revision: 97964 $"

deferred class
	FEED_VISITOR

feature -- Visit

	visit_feed (a_feed: FEED)
		deferred
		end

	visit_link (a_link: FEED_LINK)
		deferred
		end

	visit_item (a_item: FEED_ITEM)
		deferred
		end

	visit_author (a_author: FEED_AUTHOR)
		deferred
		end

end
