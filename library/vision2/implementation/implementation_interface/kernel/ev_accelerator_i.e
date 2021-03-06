note
	description: "Eiffel Vision accelerator. Implementation interface."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date: 2013-05-20 23:15:17 +0000 (Mon, 20 May 2013) $"
	revision: "$Revision: 92557 $"

deferred class
	EV_ACCELERATOR_I

inherit
	EV_ANY_I
		redefine
			interface
		end

feature -- Access

	parented: BOOLEAN
			-- Does `Current' have a parent?

	enable_parented
			-- Assign True to `parented'.
		do
			parented := True
		end

	disable_parented
			-- Assign False to `parented'.
		do
			parented := False
		end

	key: EV_KEY
			-- Key that has to pressed to trigger actions.
		deferred
		end

	shift_required: BOOLEAN
			-- Must the shift key be pressed?
		deferred
		end

	alt_required: BOOLEAN
			-- Must the alt key be pressed?
		deferred
		end

	control_required: BOOLEAN
			-- Must the control key be pressed?
		deferred
		end

feature -- Events

	actions: EV_NOTIFY_ACTION_SEQUENCE
			-- Actions to be performed when `key' is pressed.
		do
			if actions_internal = Void then
				create actions_internal
			end
			Result := actions_internal
		end

feature -- Element change

	set_key (a_key: EV_KEY)
			-- Set `a_key_code' as new key that has to be pressed.
		deferred
		end

	enable_shift_required
			-- "Shift" must be pressed for the key combination.
		deferred
		end

	disable_shift_required
			-- "Shift" is not part of the key combination.
		deferred
		end

	enable_alt_required
			-- "Alt" must be pressed for the key combination.
		deferred
		end

	disable_alt_required
			-- "Alt" is not part of the key combination.
		deferred
		end

	enable_control_required
			-- "Control" must be pressed for the key combination.
		deferred
		end

	disable_control_required
			-- "Control" is not part of the key combination.
		deferred
		end

feature {EV_ANY_I} -- Implementation

	hash_code: INTEGER
			-- Hash code to be used with `Current' when adding to accel list of a window.
		require
			key_set: key /= Void
		do
			Result := hash_code_function (key.code, control_required, alt_required, shift_required)
		end

	hash_code_function (a_key_code: INTEGER; a_control_required, a_alt_required, a_shift_required: BOOLEAN): INTEGER
			-- Function used for generating accelerator hash codes.
		do
			Result := a_key_code
			if a_control_required then
				Result := Result + 2048
			end
			if a_alt_required then
				Result := Result + 1024
			end
			if a_shift_required then
				Result := Result + 512
			end
		end

feature {EV_ACCELERATOR_I} -- Implementation

	actions_internal: detachable EV_NOTIFY_ACTION_SEQUENCE
			-- Actions to be performed on accelerator activation.
		note
			option: stable
		attribute
		end

feature {EV_ANY, EV_ANY_I} -- Implementation

	interface: detachable EV_ACCELERATOR note option: stable attribute end;

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




end -- class EV_ACCELERATOR_I











