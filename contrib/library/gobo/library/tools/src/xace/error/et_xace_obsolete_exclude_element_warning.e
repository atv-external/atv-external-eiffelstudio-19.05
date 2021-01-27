note

	description:

		"Warning: Obsolete <exclude> element"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2004-2011, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class ET_XACE_OBSOLETE_EXCLUDE_ELEMENT_WARNING

inherit

	ET_XACE_WARNING

create

	make

feature {NONE} -- Initialization

	make (a_position: XM_POSITION)
			-- Create a warning reporting that an exclude element
			-- is obsoleted by if/unless attributes.
		require
			a_position_not_void: a_position /= Void
		do
			create parameters.make_filled (empty_string, 1, 1)
			parameters.put (a_position.out, 1)
		end

feature -- Access

	default_template: STRING = "<exclude> at $1 is obsolete, use 'if'/'unless' attributes instead"
			-- Default template used to built the error message

	code: STRING = "XA0015"
			-- Error code

end
