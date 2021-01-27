note
	description: "Launcher for reverse proxy web application."
	date: "$Date: 2016-09-27 14:27:21 +0000 (Tue, 27 Sep 2016) $"
	revision: "$Revision: 99191 $"

class
	APPLICATION

inherit
	WSF_DEFAULT_SERVICE [APPLICATION_EXECUTION]
		redefine
			initialize
		end

create
	make_and_launch

feature {NONE} -- Initialization

	initialize
			-- Initialize current service.
		do
				-- Specific to `standalone' connector (the EiffelWeb server).
				-- See `{WSF_STANDALONE_SERVICE_LAUNCHER}.initialize'
 			set_service_option ("port", 9090)
			import_service_options (create {WSF_SERVICE_LAUNCHER_OPTIONS_FROM_INI}.make_from_file ("server.ini"))
		end

end
