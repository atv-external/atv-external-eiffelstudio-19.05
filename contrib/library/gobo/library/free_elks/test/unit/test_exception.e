note

	description:

		"Test features of class EXCEPTION"

	library: "FreeELKS Library"
	copyright: "Copyright (c) 2016, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
	revision: "$Revision: 102790 $"

class TEST_EXCEPTION

inherit

	TS_TEST_CASE

	EXCEPTION_MANAGER_FACTORY
		export {NONE} all end
	
create

	make_default

feature -- Test

	test_raise
			-- Test feature 'raise'.
		local
			l_retried: BOOLEAN
			l_exception: EXCEPTION
		do
			if not l_retried then
				create l_exception
				l_exception.set_description ("My Gobo exception")
				l_exception.raise
			else
				assert_same ("exception", l_exception, exception_manager.last_exception)
			end
		rescue
			if not l_retried then
				l_retried := True
				retry
			end
		end

end
