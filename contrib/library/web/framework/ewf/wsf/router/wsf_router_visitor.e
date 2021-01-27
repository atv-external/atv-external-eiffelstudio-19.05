note
	description: "Summary description for {WSF_ROUTER_VISITOR}."
	author: ""
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"

deferred class
	WSF_ROUTER_VISITOR

feature -- Visitor

	process_router (r: WSF_ROUTER)
		deferred
		end

	process_item (i: WSF_ROUTER_ITEM)
		deferred
		end

	process_mapping (m: WSF_ROUTER_MAPPING)
		deferred
		end

	process_handler (h: WSF_HANDLER)
		deferred
		end

end
