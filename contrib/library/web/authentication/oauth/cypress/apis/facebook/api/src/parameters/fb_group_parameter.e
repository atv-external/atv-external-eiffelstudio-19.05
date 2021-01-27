note
	description: "Summary description for {FB_GROUP_PARAMETER}."
	author: ""
	date: "$Date: 2018-09-06 16:07:18 +0000 (Thu, 06 Sep 2018) $"
	revision: "$Revision: 102137 $"

class
	FB_GROUP_PARAMETER

-- TODO to be completed.

feature -- Access

	parameters: detachable STRING

feature {NONE} -- Implementation

	include (a_val: STRING)
		local
			l_parameters: STRING
		do
			l_parameters := parameters
			if l_parameters /= Void then
				l_parameters.append_character (',')
				l_parameters.append (a_val)
			else
				create l_parameters.make_from_string ("fields=")
				l_parameters.append (a_val)
			end
			parameters := l_parameters
		end


end
