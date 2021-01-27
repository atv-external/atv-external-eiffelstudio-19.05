note

	description:

		"Eiffel feature names in qualified calls"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_QUALIFIED_FEATURE_NAME

inherit

	ET_AST_NODE

feature -- Access

	feature_name: ET_FEATURE_NAME
			-- Feature name
		deferred
		ensure
			feature_name_not_void: Result /= Void
		end

end
