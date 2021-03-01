git pull --ff-only origin master && git push upstream master && git branch -d $1 && git push origin :$1

