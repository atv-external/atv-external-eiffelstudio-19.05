note
	description: "Summary description for {EWF_DEBUG_EXECUTION}."
	author: ""
	date: "$Date: 2015-06-10 16:48:30 +0000 (Wed, 10 Jun 2015) $"
	revision: "$Revision: 97452 $"

class
	EWF_DEBUG_EXECUTION

inherit
	WSF_EXECUTION

create
	make

feature -- Execution

	execute
		local
			dbg: WSF_DEBUG_HANDLER
		do
			response.put_error ("DEBUG uri=" + request.request_uri + "%N")
			create dbg.make
			dbg.execute_starts_with ("", request, response)
		end

end
