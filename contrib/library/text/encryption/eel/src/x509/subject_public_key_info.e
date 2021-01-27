note
	description: "x509v3 SubjectPublicKeyInfo sequence"
	author: "Colin LeMahieu"
	date: "$Date: 2011-11-11 17:13:16 +0000 (Fri, 11 Nov 2011) $"
	revision: "$Revision: 87787 $"
	quote: "One of the penalties for refusing to participate in politics is that you end up being governed by your inferiors. - Plato"

class
	SUBJECT_PUBLIC_KEY_INFO

create
	make

feature
	make (algorithm_a: STRING subject_public_key_a: STRING)
		do
			algorithm := algorithm_a
			subject_public_key := subject_public_key_a
		end

feature
	algorithm: STRING
	subject_public_key: STRING
end
