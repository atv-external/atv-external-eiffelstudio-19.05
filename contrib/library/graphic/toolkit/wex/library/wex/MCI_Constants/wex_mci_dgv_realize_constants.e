note
	description: "Constants used with the MCI_REALIZE command %
		%for the digitalaudio MCI device."
	status: "See notice at end of class."
	author: "Robin van Ommeren"
	date: "$Date: 2018-02-05 08:33:45 +0000 (Mon, 05 Feb 2018) $"
	revision: "$Revision: 101353 $"

class
	WEX_MCI_DGV_REALIZE_CONSTANTS

feature -- Access

	Mci_dgv_realize_bkgd: INTEGER
		external
			"C [macro <wex_mci.h>]"
		alias
			"MCI_DGV_REALIZE_BKGD"
		end

	Mci_dgv_realize_norm: INTEGER
		external
			"C [macro <wex_mci.h>]"
		alias
			"MCI_DGV_REALIZE_NORM"
		end

end -- class WEX_MCI_DGV_REALIZE_CONSTANTS

--|-------------------------------------------------------------------------
--| WEX, Windows Eiffel library eXtension
--| Copyright (C) 1998  Robin van Ommeren, Andreas Leitner
--| See the file forum.txt included in this package for licensing info.
--|
--| Comments, Questions, Additions to this library? please contact:
--|
--| Robin van Ommeren						Andreas Leitner
--| Eikenlaan 54M								Arndtgasse 1/3/5
--| 7151 WT Eibergen							8010 Graz
--| The Netherlands							Austria
--| email: robin.van.ommeren@wxs.nl		email: andreas.leitner@teleweb.at
--| web: http://home.wxs.nl/~rommeren	web: about:blank
--|-------------------------------------------------------------------------
