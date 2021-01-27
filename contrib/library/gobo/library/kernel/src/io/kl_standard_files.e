note

	description:

		"Standard files"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 1999-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

class KL_STANDARD_FILES

feature -- Access

	input: KL_STDIN_FILE
			-- Standard input file
		once
			create Result.make
		ensure
			instance_free: class
			file_not_void: Result /= Void
			file_open_read: Result.is_open_read
		end

	output: KL_STDOUT_FILE
			-- Standard output file
		once
			create Result.make
		ensure
			instance_free: class
			file_not_void: Result /= Void
			file_open_write: Result.is_open_write
		end

	error: KL_STDERR_FILE
			-- Standard error file
		once
			create Result.make
		ensure
			instance_free: class
			file_not_void: Result /= Void
			file_open_write: Result.is_open_write
		end

end
