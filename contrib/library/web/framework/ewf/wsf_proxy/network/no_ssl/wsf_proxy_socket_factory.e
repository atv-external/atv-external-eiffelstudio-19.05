note
	description: "Summary description for {WSF_PROXY_SOCKET_FACTORY}."
	author: ""
	date: "$Date: 2016-09-27 14:27:21 +0000 (Tue, 27 Sep 2016) $"
	revision: "$Revision: 99191 $"

class
	WSF_PROXY_SOCKET_FACTORY

inherit
	WSF_PROXY_SOCKET_FACTORY_I

feature {NONE} -- Implementation		

	ssl_socket (a_host: READABLE_STRING_8; a_port: INTEGER): detachable NETWORK_STREAM_SOCKET
		do
			check supported: False end
		end

end
