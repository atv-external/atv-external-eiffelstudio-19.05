note
	description: "A normal CP_TASK with a promise attribute."
	author: "Roman Schmocker"
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

deferred class
	CP_DEFAULT_TASK

inherit
	CP_TASK

feature -- Access

	promise: detachable separate CP_SHARED_PROMISE
			-- <Precursor>

feature -- Element change

	set_promise (a_promise: like promise)
			-- <Precursor>
		do
			promise := a_promise
		end
end
