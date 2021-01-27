note

	description:

		"Tests"

	library: "Gobo Eiffel Test Library"
	copyright: "Copyright (c) 2000-2005, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-07 15:55:30 +0000 (Sat, 07 May 2016) $"
	revision: "$Revision: 98684 $"

deferred class TS_TEST

feature -- Access

	name: STRING
			-- Name
		deferred
		ensure
			name_not_void: Result /= Void
		end

	variables: TS_VARIABLES
			-- Defined variables
		deferred
		ensure
			variables_not_void: Result /= Void
		end

feature -- Measurement

	count: INTEGER
			-- Number of test cases
		deferred
		ensure
			count_positive: Result >= 0
		end

feature -- Execution

	execute (a_summary: TS_SUMMARY)
			-- Run test and put results in `a_summary'.
		require
			a_summary_not_void: a_summary /= Void
		deferred
		end

end
