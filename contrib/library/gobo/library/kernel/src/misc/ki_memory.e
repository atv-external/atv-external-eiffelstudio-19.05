note

	description:

		"Interface for facilities for tuning up the garbage collection mechanism"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2008-2018, Eric Bezault and others"
	license: "MIT License"
	date: "$Date: 2019-02-07 22:54:15 +0000 (Thu, 07 Feb 2019) $"
	revision: "$Revision: 102807 $"

deferred class KI_MEMORY

feature -- Status report

	collecting: BOOLEAN
			-- Is garbage collection enabled?
		deferred
		ensure
			instance_free: class
		end

feature -- Status setting

	collection_off
			-- Disable garbage collection.
		deferred
		ensure
			instance_free: class
		end

	collection_on
			-- Enable garbage collection.
		deferred
		ensure
			instance_free: class
		end

feature -- Garbage collection

	collect
			-- Force a partial collection cycle if garbage
			-- collection is enabled; do nothing otherwise.
		deferred
		ensure
			instance_free: class
		end

	full_collect
			-- Force a full collection cycle if garbage
			-- collection is enabled; do nothing otherwise.
		deferred
		ensure
			instance_free: class
		end

	full_coalesce
			-- Coalesce the whole memory: merge adjacent free
			-- blocks to reduce fragmentation. Useful, when
			-- a lot of memory is allocated with garbage collector off.
		deferred
		ensure
			instance_free: class
		end

end
