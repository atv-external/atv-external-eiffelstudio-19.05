note

	description:

		"Eiffel type marks (e.g. 'attached', 'detachable', 'expanded', 'reference', 'separate', 'deferred', '!' or '?')"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2008-2014, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_CLASS_MARK

inherit

	ET_TYPE_MARK
		undefine
			first_position,
			last_position,
			break
		end

	ET_AST_LEAF

feature -- Status report

	is_deferred: BOOLEAN
			-- Is current type mark 'deferred'?
		do
			-- Result := False
		end

end
