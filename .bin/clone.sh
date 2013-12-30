#!/bin/bash
# The script clones all repositories of an GitHub organization.
# Author: Jens-Andre Koch
# Date: 24.09.2012
# License: Beerware and Postcard License v2.1
 
# the github organization to fetch all repositories for
GITHUB_ORGANIZATION="auv-iitb"
GITHUB_USER="sksavant"
 
# the git clone cmd used for cloning each repository
# the parameter recursive is used to clone submodules, too.
GIT_CLONE_CMD="git clone --recursive "
 
# fetch repository list via github api
# grep fetches the json object key ssh_url, which contains the ssh url for the repository
REPOLIST=`curl --silent https://api.github.com/orgs/${GITHUB_ORGANIZATION}/repos -q | grep "\"ssh_url\"" | awk -F': "' '{print $2}' | sed -e 's/",//g'`
 
# loop over all repository urls and execute clone
for REPO in $REPOLIST; do
    ${GIT_CLONE_CMD}${REPO}
done

REPOLIST=`curl --silent https://api.github.com/users/${GITHUB_USER}/repos -q | grep "\"ssh_url\"" | awk -F': "' '{print $2}' | sed -e 's/",//g'`
for REPO in $REPOLIST; do
    ${GIT_CLONE_CMD}${REPO}
done
