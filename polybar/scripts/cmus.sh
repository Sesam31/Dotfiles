#!/bin/bash

prepend_zero () {
    seq -f "%02g" $1 $1
}

artist=$(echo -n $(cmus-remote -C status | grep artist -m 1| cut -c 12-))
song=$(echo -n $(cmus-remote -C status | grep title | cut -c 11-))

if [[ ¨$artist¨ != ¨¨ ]];
then
		echo -n "  $song - $artist "
fi
