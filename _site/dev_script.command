cd "`dirname "$0"`"
browser-sync start -s './' --files './' &
jekyll build --watch