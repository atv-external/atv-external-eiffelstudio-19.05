note
	description: "[
				application service
			]"
	date: "$Date: 2016-10-21 17:45:18 +0000 (Fri, 21 Oct 2016) $"
	revision: "$Revision: 99331 $"

class
	{if isset="$APP_ROOT"}{$APP_ROOT/}{/if}
	{unless isset="$APP_ROOT"}APPLICATION{/unless}

inherit
	WSF_LAUNCHABLE_SERVICE
		redefine
			initialize
		end
	{if isset="$APP_ROOT"}APPLICATION_LAUNCHER [{$APP_ROOT/}_EXECUTION]{/if}
	{unless isset="$APP_ROOT"}APPLICATION_LAUNCHER [APPLICATION_EXECUTION]{/unless}

{literal}create
	make_and_launch

feature {NONE} -- Initialization
{/literal}
	initialize
			-- Initialize current service.
		do
			Precursor
			set_service_option ("port", {$WIZ.standalone_connector.port/})
			set_service_option ("verbose", "{$WIZ.standalone_connector.verbose/}")
		end


end
