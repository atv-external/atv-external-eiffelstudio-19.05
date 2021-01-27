note
	description : "simple application root class"
	date        : "$Date: 2017-11-07 14:46:10 +0000 (Tue, 07 Nov 2017) $"
	revision    : "$Revision: 101018 $"

class
	SERVICE_COMPRESSION

inherit
	WSF_DEFAULT_SERVICE [SERVICE_COMPRESSION_EXECUTION]
		redefine
			initialize
		end

create
	make_and_launch

feature {NONE} -- Initialization

	initialize
		do
			Precursor
			import_service_options (create {WSF_SERVICE_LAUNCHER_OPTIONS_FROM_INI}.make_from_file ("service.ini"))
		end

end
