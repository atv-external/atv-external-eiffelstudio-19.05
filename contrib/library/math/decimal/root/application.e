note
	description : "decimal0 application root class"
	date        : "$Date: 2012-06-21 00:11:54 +0000 (Thu, 21 Jun 2012) $"
	revision    : "$Revision: 88953 $"

class
	APPLICATION

inherit
	ES_SUITE

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			add_test (create{SLOW_TESTS}.make)
			add_test (create{FAST_TESTS}.make)
			add_test (create{DECIMAL_TEST}.make)
			add_test (create{AF_TESTS}.make)
			add_test (create{ROUNDING_DEC_TEST}.make)
			show_browser
			run_espec
			show_errors
		end

end
