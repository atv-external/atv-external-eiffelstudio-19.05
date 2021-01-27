note
	description: "CMS handler specific for a module api"
	date: "$Date: 2015-04-30 08:41:13 +0000 (Thu, 30 Apr 2015) $"
	revision: "$Revision: 97217 $"

deferred class
	CMS_MODULE_HANDLER [G -> CMS_MODULE_API]

inherit
	CMS_HANDLER
		rename
			make as cms_make
		end

feature {NONE} -- Initialization

	make (a_api: CMS_API; a_module_api: G)
		do
			cms_make (a_api)
			module_api := a_module_api
		end

	module_api: G
			-- Node api	

end
