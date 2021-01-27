#!/bin/sh

# system:     "SSEL test 4"
# library:    "Gobo Eiffel Tools Library"
# compiler:   "SmallEiffel -0.78"
# author:     "Eric Bezault <ericb@gobosoft.com>"
# copyright:  "Copyright (c) 1999, Eric Bezault and others"
# license:    "MIT License"
# date:       "$Date: 2019-02-05 23:54:36 +0000 (Tue, 05 Feb 2019) $"
# revision:   "$Revision: 102790 $"


export geoptions="-no_split -no_style_warning -no_gc"
compile $geoptions A make
