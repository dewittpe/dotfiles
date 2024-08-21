#!/bin/bash
#
# githubforks.sh
#
# use:
#
#   githubforks.sh [name]
#
# If [name] is omitted the url for the "origin" will be used to determine the
# user/repo which is used to get all the ssh_urls for all the forks.
#
# Assumptions: the [name] remote is on github.  urls for the [name] and the
# forks will be git@github.com:user/repo.git
#
# **git alias**
#
# copy this script, or soft link it, to
#
#  ~/.githubforks.sh
#
# Add an alias to git
#
# git config --global alias.githubforks '!sh ~/.githubforks.sh'

if [ -z $1 ]
then
  echo looking for the url of the \'origin\'
  name=origin
else
  name=$1
fi

userrepo=($(git remote get-url --all $name | gawk -v FS=':' '{print $2}' | gawk -v FS=".git" '{print $1}'))

echo $userrepo

URLS=($(curl https://api.github.com/repos/$userrepo/forks | grep "ssh_url" | gawk -v FS='"' '{print $4}'))

echo ${URLS[*]}

for i in "${URLS[@]}"
do
  git remote add $(echo "$i"  | gawk -v FS=':|/' '{print $2}') $i
done

git fetch --verbose --all
