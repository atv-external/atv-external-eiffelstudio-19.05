note
	description: "[
		Eiffel tests that can be executed by testing tool.
	]"
	author: "EiffelStudio test wizard"
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"
	testing: "type/manual"

class
	TEST_NS_FONT

inherit
	EQA_TEST_SET

feature -- Test routines

	test_create_font_of_size
		local
			font: NS_FONT
		do
			create font.system_font_of_size (12.0)
			assert ("Correct_point_size", font.point_size - 12.0 < .001)
		end

end
