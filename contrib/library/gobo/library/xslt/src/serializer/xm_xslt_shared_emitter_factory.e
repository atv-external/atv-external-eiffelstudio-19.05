note

	description:

		"Objects that provide shared access to a singleton emitter factory."

	library: "Gobo Eiffel XSLT Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XSLT_SHARED_EMITTER_FACTORY

feature -- Access

	emitter_factory: XM_XSLT_EMITTER_FACTORY
			-- Singletom emitter factory
		once
			create Result.make
		ensure
			emitter_factory_not_void: Result /= Void
		end

end

