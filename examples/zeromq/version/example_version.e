note
	description : "ØMQ version reporting"
	date        : "$Date: 2014-05-12 18:52:35 +0000 (Mon, 12 May 2014) $"
	revision    : "$Revision: 95027 $"
	EIS: "name=version", "src=https://github.com/imatix/zguide/blob/master/examples/C/version.c", "protocol=uri"

class
	EXAMPLE_VERSION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			l_major, l_minor, l_patch: INTEGER
		do
			{ZMQ}.version ($l_major, $l_minor, $l_patch)
			print ("Current 0MQ version is :"+ l_major.out + "-" + l_minor.out + "-" + l_patch.out)
		end

end
