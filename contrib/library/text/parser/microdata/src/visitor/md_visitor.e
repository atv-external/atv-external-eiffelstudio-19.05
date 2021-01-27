note
	description: "Summary description for {MD_VISITOR}."
	author: ""
	date: "$Date: 2013-09-11 14:22:15 +0000 (Wed, 11 Sep 2013) $"
	revision: "$Revision: 92931 $"

deferred class
	MD_VISITOR

feature -- Visitor

	visit_document (vis: MD_DOCUMENT)
		deferred
		end

	visit_id_node (vis: MD_ID_NODE)
		deferred
		end

	visit_item (vis: MD_ITEM)
		deferred
		end

	visit_property (v: MD_PROPERTY)
		deferred
		end

note
	copyright: "2011-2013, Jocelyn Fiat, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
