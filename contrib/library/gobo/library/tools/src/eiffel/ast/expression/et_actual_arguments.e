note

	description:

		"Eiffel actual arguments"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2004-2006, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class ET_ACTUAL_ARGUMENTS

inherit

	ET_ARGUMENT_OPERANDS
		redefine
			actual_argument
		end

	ET_EXPRESSIONS
		rename
			expression as actual_argument
		redefine
			actual_argument
		end

feature -- Access

	actual_argument (i: INTEGER): ET_EXPRESSION
			-- Actual argument at index `i'
		deferred
		end

end
