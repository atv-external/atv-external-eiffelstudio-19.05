note

	description:

		"Shared XPath expression factory"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_SHARED_EXPRESSION_FACTORY

feature -- Access

	expression_factory: XM_XPATH_EXPRESSION_FACTORY
			-- Expression equality tester
		once
			create Result
		ensure
			expression_factory_not_void: Result /= Void
		end

end
