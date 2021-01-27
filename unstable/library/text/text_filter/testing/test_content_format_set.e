note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date: 2014-10-16 08:20:07 +0000 (Thu, 16 Oct 2014) $"
	revision: "$Revision: 95933 $"
	testing: "type/manual"

class
	TEST_CONTENT_FORMAT_SET

inherit
	EQA_TEST_SET

feature -- Test routines

	test_content_format
			-- New test routine
		local
			f: CONTENT_FORMAT
		do
			create {FILTERED_HTML_CONTENT_FORMAT} f
			create {FULL_HTML_CONTENT_FORMAT} f
			create {PLAIN_TEXT_CONTENT_FORMAT} f


			assert ("not_implemented", False)
		end

end


