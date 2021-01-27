note
	description: "Summary description for {TWITTER_MENTIONS_TIMELINE_PARAMS}."
	author: ""
	date: "$Date: 2018-11-16 13:29:33 +0000 (Fri, 16 Nov 2018) $"
	revision: "$Revision: 102478 $"

class
	TWITTER_MENTIONS_TIMELINE_PARAMS

inherit

	STRING_TABLE [STRING]
		export {TWITTER_MENTIONS_TIMELINE_PARAMS} all
		end
create
	make, make_equal, make_caseless, make_equal_caseless


feature -- Element Change

	add_count (a_val: INTEGER)
			-- Add 'count' parameter.
		do
			force (a_val.out, count_field)
		ensure
			has_field: Current.has (count_field)
		end

	add_since_id (a_val: INTEGER)
			-- Add `since_id' parameter.
		do
			force (a_val.out, since_id)
		ensure
			has_field: Current.has (since_id)
		end

	add_max_id (a_val: INTEGER)
			-- Add `max_id' parameter.
		do
			force (a_val.out, max_id)
		ensure
			has_field: Current.has (max_id)
		end

	add_trim_user (a_val: BOOLEAN)
			-- Add `trim_user' parameter.
		do
			force (a_val.out, trim_user)
		ensure
			has_field: Current.has (trim_user)
		end

	add_include_entities (a_val: BOOLEAN)
			-- Add `include_entities' parameter.
		do
			force (a_val.out, include_entities)
		ensure
			has_field: Current.has (include_entities)
		end

feature {NONE} -- Implementation

	count_field: STRING = "count"
			-- Specifies the number of records to retrieve. Must be less than or equal to 200.
			-- Defaults to 20. The value of count is best thought of as a limit to the number of tweets
			-- to return because suspended or deleted content is removed after the count has been applied

	since_id: STRING = "since_id"
			-- Returns results with an ID greater than (that is, more recent than) the specified ID.
			-- There are limits to the number of Tweets which can be accessed through the API.
			-- If the limit of Tweets has occured since the since_id, the since_id will be forced to the oldest ID
			-- available.

	max_id: STRING = "max_id"
			-- Returns results with an ID less than (that is, older than) or equal to the specified ID.		

	trim_user: STRING = "trim_user"
			-- When set to either true , t or 1 , each Tweet returned in a timeline
			-- will include a user object including only the status authors numerical ID.
			-- Omit this parameter to receive the complete user object.

	include_entities: STRING = "include_entities"
			-- The entities node will not be included when set to false.				
end
