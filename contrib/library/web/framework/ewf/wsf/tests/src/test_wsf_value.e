note
	description: "Summary description for {TEST_WSF_VALUE}."
	author: ""
	date: "$Date: 2013-05-20 13:34:55 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92549 $"

class
	TEST_WSF_VALUE

inherit
	EQA_TEST_SET

feature {NONE} -- Events

	test_table
		local
			tb: WSF_TABLE
		do
			create tb.make ("table")
			assert ("Ok", True)
		end

end
