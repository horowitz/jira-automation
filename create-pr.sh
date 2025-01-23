title=$1
current_branch=$(git branch --show-current)

gh pr create --base upstream:master --head $current_branch --title "$current_branch $title" --body "{describe}"