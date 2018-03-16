#!/bin/bash
echo "Generate index.html..."
echo "Hello guys...This the CI test on GCP!"
echo "Build:" `date`
TAG="release"`date +"%Y%m%d%H%M%S"`
echo "Generate release tag: $TAG"
echo "git add changes..."
git add .
echo "git commit..."
git commit -m "test $TAG"
echo "git tag..."
git tag -a $TAG -m "this a test"
echo "push to remote"
git push --tags
echo "Waiting 15 secs..."
sleep 15
open http://35.229.26.224/