#!/bin/bash
set -e

issue_id=$(git branch --show-current)

me="$(jira me)"

jira issue assign "$issue_id" "$me"

jira issue move "$issue_id" "In Progress"

echo "🚀 $me started to work on $issue_id"