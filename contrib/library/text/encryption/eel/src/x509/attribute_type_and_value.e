note
	description: "x509v3 AttributeTypeAndValue sequence"
	author: "Colin LeMahieu"
	date: "$Date: 2011-11-11 17:13:16 +0000 (Fri, 11 Nov 2011) $"
	revision: "$Revision: 87787 $"
	quote: "Truth and news are not the same thing. - Katharine Graham, owner of The Washington Post"

class
	ATTRIBUTE_TYPE_AND_VALUE

create
	make

feature
	make (type_a: OBJECT_IDENTIFIER value_a: SPECIAL [NATURAL_8])
		do
			type := type_a
			value := value_a
		end
		
feature
	type: OBJECT_IDENTIFIER
	value: SPECIAL [NATURAL_8]
end
