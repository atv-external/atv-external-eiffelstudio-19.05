note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"
	testing: "type/manual"

class
	TEST_WSF_REQUEST_CHUNKED_INPUT

inherit
	TEST_WSF_REQUEST
		redefine
			adapted_context,
			test_get_request_01,
			test_post_request_01
		end

feature {NONE} -- Helpers

	adapted_context (ctx: detachable HTTP_CLIENT_REQUEST_CONTEXT): HTTP_CLIENT_REQUEST_CONTEXT
		do
			Result := Precursor (ctx)
			Result.headers.force ("chunked", "Transfer-Encoding")
		end

feature -- Test routines

	test_get_request_01
		do
			Precursor
		end

	test_post_request_01
		do
			Precursor
		end

end


