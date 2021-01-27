note
	description : "simple application root class"
	date        : "$Date: 2016-10-25 13:25:20 +0000 (Tue, 25 Oct 2016) $"
	revision    : "$Revision: 99333 $"

class
	SERVICE_FILE

inherit
	WSF_DEFAULT_SERVICE [SERVICE_FILE_EXECUTION]
		redefine
			initialize
		end

create
	make_and_launch

feature {NONE} -- Initialization

	initialize
		do
			Precursor
			set_service_option ("port", 9090)
			import_service_options (create {WSF_SERVICE_LAUNCHER_OPTIONS_FROM_INI}.make_from_file ("service.ini"))
		end

end
