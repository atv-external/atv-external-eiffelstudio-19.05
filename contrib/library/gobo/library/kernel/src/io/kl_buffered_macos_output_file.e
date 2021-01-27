note

	description:

	"[
		MacOS-like text output files containing extended ASCII
		characters (8-bit code between 0 and 255), with buffer.
	]"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2017, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2017-04-11 18:34:55 +0000 (Tue, 11 Apr 2017) $"
	revision: "$Revision: 100137 $"

class KL_BUFFERED_MACOS_OUTPUT_FILE

inherit

	KL_MACOS_OUTPUT_FILE
		undefine
			make,
			reset,
			put_character,
			put_string,
			open_write,
			open_append,
			recursive_open_write,
			recursive_open_append,
			flush,
			close
		end

	KL_BUFFERED_BINARY_OUTPUT_FILE

create

	make,
	make_with_buffer_size,
	make_with_buffer

end
