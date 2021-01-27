note
	description: "Summary description for {CANCELABLE_TEST}."
	author: ""
	date: "$Date: 2014-10-03 13:37:39 +0000 (Fri, 03 Oct 2014) $"
	revision: "$Revision: 95848 $"

class
	CANCELABLE_TEST

inherit
	CP_DEFAULT_TASK

create
	default_create, make_from_separate


feature {CP_DYNAMIC_TYPE_IMPORTER}-- Initialization

	make_from_separate (other: separate like Current)
		do
			promise := other.promise
		end

feature

	millisecond: INTEGER_64 = 1_000_000

	run
			-- <Precursor>
		local
			env: EXECUTION_ENVIRONMENT
		do
			from
				create env
			until
				attached promise as l_promise and then is_promise_cancelled (l_promise)
			loop
				env.sleep (200 * millisecond)
			end
		end

end
