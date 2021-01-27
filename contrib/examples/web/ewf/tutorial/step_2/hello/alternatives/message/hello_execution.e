note
	description: "[
			Request execution for Current application.
			Implement `message' based on `request' and `response'.
		]"
	author: "$Author: jfiat $"
	date: "$Date: 2015-06-10 16:48:30 +0000 (Wed, 10 Jun 2015) $"
	revision: "$Revision: 97452 $"

class
	HELLO_EXECUTION

inherit
	WSF_MESSAGE_EXECUTION

create
	make

feature -- Execution

	message: WSF_PAGE_RESPONSE
		do
			create Result.make_with_body ("Hello World")
			response.send (Result)
		end

end
