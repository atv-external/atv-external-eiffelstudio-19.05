note

	description:

		"Eiffel unqualified feature call expressions"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2014, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_UNQUALIFIED_FEATURE_CALL_EXPRESSION

inherit

	ET_FEATURE_CALL_EXPRESSION
		undefine
			is_qualified_call
		end

	ET_UNQUALIFIED_FEATURE_CALL
		undefine
			parenthesis_call
		end

end
