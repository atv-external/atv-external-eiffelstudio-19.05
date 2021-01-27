note
	description: "Represents an entity (i.e. a collection or object) within the database."
	author: "Roman Schmocker"
	date: "$Date: 2014-01-02 20:22:38 +0000 (Thu, 02 Jan 2014) $"
	revision: "$Revision: 93870 $"

deferred class
	PS_BACKEND_ENTITY

inherit
	PS_ABEL_EXPORT
		undefine
			is_equal
		end

feature {PS_ABEL_EXPORT} -- Access

	primary_key: INTEGER
			-- The primary key of the entity.

	type: PS_TYPE_METADATA
			-- The type of the entity.

feature {PS_ABEL_EXPORT} -- Status report

	is_root: BOOLEAN
			-- Is the current entity a garbage collection root?

	is_new: BOOLEAN
			-- Has the current entity been freshly generated by the backend?
			-- This can be used as a hint by the backends, because if `is_new'
			-- is true the backend doesn't have to delete the old version first.

	is_update_delta: BOOLEAN
			-- Is the information stored in `Current' only the difference
			-- for an update operation?

	has_type (a_type: PS_TYPE_METADATA): BOOLEAN
			-- Is `Current.metadata' equal to `a_type'?
		do
			Result := type.is_equal (a_type)
		end

feature -- Comparison

	is_equal (other: like Current): BOOLEAN
			-- <Precursor>
		deferred
		ensure then
			same_primary: primary_key = other.primary_key
			same_type: type ~ other.type
		end

feature {PS_ABEL_EXPORT} -- Element change

	set_is_root (value: BOOLEAN)
			-- Set `is_root' to `value'.
		do
			is_root := value
		ensure
			correct: is_root = value
		end

	set_is_update_delta (value: BOOLEAN)
			-- Set `is_update_delta' to `value'.
		do
			is_update_delta := value
		ensure
			correct: is_update_delta = value
		end

	declare_as_old
			-- Set `is_new' to `False'
		do
			is_new := False
		ensure
			is_old: not is_new
		end

feature {NONE} -- Initialization

	make (key: INTEGER; a_type: PS_TYPE_METADATA)
			-- Initialization for `Current'.
		deferred
		ensure
			key_set: primary_key = key
			metadata_set: type.is_equal (a_type)
			not_fresh: not is_new
		end

	make_fresh (key: INTEGER; a_type: PS_TYPE_METADATA)
			-- Initialization for `Current'.
		do
			make (key, a_type)
			is_new := True
		ensure
			key_set: primary_key = key
			metadata_set: type.is_equal (a_type)
			fresh: is_new
		end

end
