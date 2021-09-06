SHELL=/bin/bash

day := `date +"%Y_%m_%d"`
m := autopush ${ct}_${day}
branch := origin master
autocommit:
	git add .
	git commit -m "${m}"

pull:
	git pull ${branch}

force_pull:
	git fetch ${branch}
	git reset --hard origin/master