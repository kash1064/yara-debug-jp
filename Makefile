SHELL=/bin/bash

day := `date +"%Y_%m_%d"`
m := autopush ${ct}_${day}
branch := origin master
autopush: ## This is auto push module, need commit message(default=autopush)
	git add .
	git commit -m "${m}"
	git push ${branch}

pull:
	git pull ${branch}

force_pull:
	git fetch ${branch}
	git reset --hard origin/master