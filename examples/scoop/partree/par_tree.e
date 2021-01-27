note
	description: "Summary description for {TREE}."
	date: "$Date: 2015-12-17 13:34:17 +0000 (Thu, 17 Dec 2015) $"
	revision: "$Revision: 98279 $"

deferred class
	PAR_TREE [G]

feature

	comp_result: G

        compute_agents (init: separate G;
                        trns: separate FUNCTION [G, G];
                        comb: separate FUNCTION [G,G, G]
                       )
                deferred
                end

	compute (init: G)
		deferred
		end

	trans (x: G): G
		deferred
		end

	combine (x,y: G): G
		deferred
		end


end
