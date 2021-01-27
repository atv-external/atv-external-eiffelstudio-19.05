note

	description:

		"Objects that provide a singleton object for accessing types"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004-2014, Colin Adams and others"
	license: "MIT License"
	date: "$Date: 2016-05-06 19:15:38 +0000 (Fri, 06 May 2016) $"
	revision: "$Revision: 98678 $"

class XM_XPATH_SHARED_TYPE_FACTORY

inherit

	XM_XPATH_SHARED_CONFORMANCE

feature -- Access

	type_factory: XM_XPATH_COMMON_TYPE_FACTORY
			-- Singleton type factory
		once
			if conformance.basic_xslt_processor then
				create {XM_XPATH_BASIC_XSLT_TYPE_FACTORY} Result.make
			else
					check
						conformance_level_set: conformance.schema_aware_processor or else conformance.xquery_processor
					end
				create {XM_XPATH_SCHEMA_AWARE_TYPE_FACTORY} Result.make
			end
		end

end

