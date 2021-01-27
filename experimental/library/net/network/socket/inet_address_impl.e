note
	description: "Objects that ..."
	author: ""
	date: "$Date: 2013-06-03 23:53:45 +0000 (Mon, 03 Jun 2013) $"
	revision: "$Revision: 92667 $"

deferred class

	INET_ADDRESS_IMPL

feature -- Access

	local_host_name: STRING
		deferred
		end

	any_local_address: INET_ADDRESS
		deferred
		end

	loopback_address: INET_ADDRESS
		deferred
		end

--	host_by_address (an_address: ARRAY [NATURAL_8]): STRING
--		deferred
--		end

--	is_reachable (addr: INET_ADDRESS; timeout: INTEGER; netif : NETWORK_INTERFACE; ttl: INTEGER): BOOLEAN
--		deferred
--		end

end
