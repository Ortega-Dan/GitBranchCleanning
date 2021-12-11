# BASH SHELL ONLY
git fetch -p
git remote prune origin
git branch -av|grep \\[gone\\]|awk '{print $1}'|while read branch; do git branch -d $branch; done
