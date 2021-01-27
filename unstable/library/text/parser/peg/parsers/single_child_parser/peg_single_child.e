note
	description: "[
		Encapsulates the functionality of parsers with exactly one child.
	]"
	legal: "See notice at end of class."
	status: "Pre-release"
	date: "$Date: 2009-08-24 18:13:02 +0000 (Mon, 24 Aug 2009) $"
	revision: "$Revision: 80405 $"

deferred class
	PEG_SINGLE_CHILD

inherit
	PEG_ABSTRACT_PEG

feature -- Initialization

	make (a_child: PEG_ABSTRACT_PEG)
			-- `a_child': The child parser
		do
			child := a_child
		end

feature {PEG_SINGLE_CHARACTER_PARSER} -- Access

	child: PEG_ABSTRACT_PEG
			-- Child parser of current

end
