#!/bin/bash
exe=`dmenu_run -b -fn 'Fantasque Sans Mono-14' -nb '#151617' -nf '#d8d8d8' -sb '#d8d8d8' -sf '#151617'` && eval "exec $exe"
