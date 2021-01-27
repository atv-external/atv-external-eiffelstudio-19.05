note

	description:

		"Eiffel class names in precursor calls"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_PRECURSOR_CLASS_NAME

inherit

	ET_AST_NODE

feature -- Access

	class_name: ET_CLASS_NAME
			-- Class name
		deferred
		ensure
			class_name_not_void: Result /= Void
		end

end
