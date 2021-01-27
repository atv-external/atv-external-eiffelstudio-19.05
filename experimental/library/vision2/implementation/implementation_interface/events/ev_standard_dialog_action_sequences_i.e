note
	description:
		"Action sequences for EV_STANDARD_DIALOG_I."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	keywords: "event, action, sequence"
	date: "Generated!"
	revision: "Generated!"

deferred class
	 EV_STANDARD_DIALOG_ACTION_SEQUENCES_I


feature -- Event handling

	ok_actions: EV_NOTIFY_ACTION_SEQUENCE
			-- Actions to be performed when user clicks OK.
		do
			if attached ok_actions_internal as l_result then
				Result := l_result
			else
				create Result
				ok_actions_internal := Result
			end
		ensure
			not_void: Result /= Void
		end

feature {EV_ANY_I} -- Implementation

	ok_actions_internal: detachable EV_NOTIFY_ACTION_SEQUENCE
			-- Implementation of once per object `ok_actions'.
		note
			option: stable
		attribute
		end

feature -- Event handling

	cancel_actions: EV_NOTIFY_ACTION_SEQUENCE
			-- Actions to be performed when user cancels.
		do
			if attached cancel_actions_internal as l_result then
				Result := l_result
			else
				create Result
				cancel_actions_internal := Result
			end
		ensure
			not_void: Result /= Void
		end

feature {EV_ANY_I} -- Implementation

	cancel_actions_internal: detachable EV_NOTIFY_ACTION_SEQUENCE
			-- Implementation of once per object `cancel_actions'.
		note
			option: stable
		attribute
		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end











