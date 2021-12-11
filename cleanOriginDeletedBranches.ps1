# POWERSHELL ONLY
git fetch -p
git remote prune origin
git branch -av | where {$_ -match '\[gone\]'} | foreach {$_.split(" ", [StringSplitOptions]'RemoveEmptyEntries')[0]} | foreach {git branch -d $_}