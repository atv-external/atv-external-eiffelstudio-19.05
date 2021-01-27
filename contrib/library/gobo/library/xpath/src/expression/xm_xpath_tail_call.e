note

	description:

		"Objects that represent a tail call"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2005-2015, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

deferred class XM_XPATH_TAIL_CALL

inherit

	ANY

feature -- Evaluation

	generate_tail_call (a_tail: DS_CELL [detachable XM_XPATH_TAIL_CALL]; a_context: XM_XPATH_CONTEXT)
			-- Execute `Current', writing results to the current `XM_XPATH_RECEIVER'.
		require
			a_tail_not_void: a_tail /= Void
			no_tail_call: a_tail.item = Void
			context_not_void: a_context /= Void
			no_error: not a_context.is_process_error
		deferred
		ensure
			possible_tail_call: a_tail.item /= Void xor a_tail.item = Void
		end

end

