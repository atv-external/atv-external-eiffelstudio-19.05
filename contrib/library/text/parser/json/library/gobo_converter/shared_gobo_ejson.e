note
    description: "[
                   Shared factory class for creating JSON objects. Maps JSON
                   objects to Gobo DS_HASH_TABLEs and JSON arrays to Gobo
                   DS_LINKED_LISTs. Use non-conforming inheritance from this 
		   class to ensure that your classes share the same 
		   JSON_FACTORY instance.
		  ]"
    author: "Paul Cohen"
    date: "$Date: 2014-11-17 10:54:05 +0000 (Mon, 17 Nov 2014) $"
    revision: "$Revision: 96099 $"
    file: "$HeadURL: $"

class SHARED_GOBO_EJSON

feature

    json: EJSON
            -- A shared EJSON instance with default converters for 
	    -- DS_LINKED_LIST [ANY] and DS_HASH_TABLE [ANY, HASHABLE]
        local
            jllc: JSON_DS_LINKED_LIST_CONVERTER
            jhtc: JSON_DS_HASH_TABLE_CONVERTER
        once
            create Result
            create jllc.make
            Result.add_converter (jllc)
            create jhtc.make
            Result.add_converter (jhtc)
        end
        
end -- class SHARED_GOBO_EJSON
