note
	description: "Summary description for {ARRAY_DER_SINK}."
	author: ""
	date: "$Date: 2011-11-11 17:13:16 +0000 (Fri, 11 Nov 2011) $"
	revision: "$Revision: 87787 $"

class
	ARRAY_DER_SINK

inherit
	DER_OCTET_SINK

create
	make

feature
	make (target_a: ARRAY [NATURAL_8])
		do
			target := target_a
		end

	sink (item: NATURAL_8)
		do
			target.force (item, target.upper + 1)
		end

feature {NONE}
	target: ARRAY [NATURAL_8]
end
