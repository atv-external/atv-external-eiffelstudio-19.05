note

	description:

		"Shared input and output streams"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2001-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class KL_SHARED_STREAMS

feature -- Access

	null_input_stream: KI_CHARACTER_INPUT_STREAM
			-- Null input stream
		once
			create {KL_STRING_INPUT_STREAM} Result.make ("")
		ensure
			instance_free: class
			null_input_stream_not_void: Result /= Void
		end

	null_output_stream: KL_NULL_TEXT_OUTPUT_STREAM
			-- Null output stream
		once
			create Result.make ("null")
		ensure
			instance_free: class
			null_output_stream_not_void: Result /= Void
		end

end
