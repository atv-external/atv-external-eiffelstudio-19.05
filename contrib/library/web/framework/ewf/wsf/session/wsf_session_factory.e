note
	description: "Summary description for {WSF_SESSION_FACTORY}."
	author: ""
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"

deferred class
	WSF_SESSION_FACTORY [G -> WSF_SESSION]

feature -- Access

	new_session (req: WSF_REQUEST; a_reuse: BOOLEAN; m: WSF_SESSION_MANAGER): G
		deferred
		end

end
