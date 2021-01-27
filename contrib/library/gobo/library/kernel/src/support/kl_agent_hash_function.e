note

	description:

		"Hash-code functions implemented using an agent"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2007-2016, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 18:34:55 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100137 $"

class KL_AGENT_HASH_FUNCTION [G]

inherit

	KL_HASH_FUNCTION [G]

create

	make

feature {NONE} -- Initialization

	make (a_hash_agent: like hash_agent)
			-- Create a new hash function implemented using `a_hash_agent'.
		require
			a_hash_agent_not_void: a_hash_agent /= Void
--			a_hash_agent_arg_not_void: a_hash_agent can have a precondition which states that its open operand is not Void
--			a_hash_agent_result_not_negative: a_hash_agent has a postcondition which says that Result >= 0
		do
			hash_agent := a_hash_agent
		ensure
			hash_agent_set: hash_agent = a_hash_agent
		end

feature -- Access

	hash_code (v: G): INTEGER
			-- Hash code for `v'
		do
			Result := hash_agent.item ([v])
		end

feature {NONE} -- Implementation

	hash_agent: FUNCTION [G, INTEGER]
			-- Agent used to compute the hash-code

invariant

	hash_agent_not_void: hash_agent /= Void
--	hash_agent_arg_not_void: hash_agent can have a precondition which states that its open operand is not Void
--	hash_agent_result_not_negative: hash_agent has a postcondition which says that Result >= 0

end
