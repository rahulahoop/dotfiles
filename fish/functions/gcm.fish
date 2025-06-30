function gcm

    set -l MAIN $(git rev-parse --abbrev-ref origin/HEAD | awk -F'/' '{print $2}')

    git co $MAIN

end
