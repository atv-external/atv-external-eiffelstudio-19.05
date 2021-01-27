note

	description:

		"Lexical analyzer description overriders"

	library: "Gobo Eiffel Lexical Library"
	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class LX_DESCRIPTION_OVERRIDER

feature -- Basic operations

	override_description (a_description: LX_DESCRIPTION)
			-- Override values specified in `a_description'.
		require
			a_description_not_void: a_description /= Void
		deferred
		end

end
