#!/bin/bash
DIR=`pwd`
BRANCH=`git branch --show current`
git add .
echo "message: "
read msg
git commit -m "$msg"
git push origin $BRANCH
