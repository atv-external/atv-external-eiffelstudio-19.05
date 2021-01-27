note
	description: "Summary description for {JSON_DESERIALIZER_CREATION_AGENT_CALLBACK}."
	author: ""
	date: "$Date: 2018-11-14 11:33:00 +0000 (Wed, 14 Nov 2018) $"
	revision: "$Revision: 102453 $"

class
	JSON_DESERIALIZER_CREATION_AGENT_CALLBACK

inherit
	JSON_DESERIALIZER_CREATION_CALLBACK

create
	make

feature -- Initialization

	make (agt: like action)
		do
			action := agt
		end

feature -- Access

	action: PROCEDURE [TUPLE [JSON_DESERIALIZER_CREATION_INFORMATION]]

feature -- Callback

	on_value_creation (a_value_info: JSON_DESERIALIZER_CREATION_INFORMATION)
		do
			action.call (a_value_info)
		end

note
	copyright: "2010-2016, Javier Velilla and others https://github.com/eiffelhub/json."
	license: "https://github.com/eiffelhub/json/blob/master/License.txt"
end
