note

	description:

		"Semantic action factories"

	library: "Gobo Eiffel Parse Library"
	copyright: "Copyright (c) 1999, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class PR_ACTION_FACTORY

create

	make

feature {NONE} -- Initialization

	make
			-- Create a new semantic action factory.
		do
		end

feature -- Access

	new_action (a_text: STRING): PR_ACTION
			-- New semantic action with `a_text'
			-- as textual representation
		require
			a_text_not_void: a_text /= Void
		do
			create Result.make (a_text)
		ensure
			action_not_void: Result /= Void
			text_set: Result.text = a_text
		end

end
