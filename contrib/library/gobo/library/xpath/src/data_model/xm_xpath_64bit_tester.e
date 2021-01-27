note

	description:

		"XPath 64-bit equality testers"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_64BIT_TESTER

inherit

	KL_EQUALITY_TESTER [XM_XPATH_64BIT_NUMERIC_CODE]
		redefine
			test
		end

feature -- Status report

	test (v, u: XM_XPATH_64BIT_NUMERIC_CODE): BOOLEAN
			-- Are `v' and `u' considered equal?
		do
			if v = u then
				Result := True
			elseif v = Void then
				Result := False
			elseif u = Void then
				Result := False
			else
				Result := v.is_equal (u)
			end
		end

end
