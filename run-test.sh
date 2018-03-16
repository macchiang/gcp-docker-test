#!/bin/bash
echo "Show old index.html"
open http://35.229.26.224/
echo "Generate new index.html..."
echo "Hello guys...This the CI test on GCP!" > index.html
echo "Build:" `date` >> index.html
TAG="release"`date +"%Y%m%d%H%M%S"`
echo "Generate release tag: $TAG"
echo "git add changes..."
git add .
echo "git commit..."
git commit -m "test $TAG"
echo "git tag..."
git tag -a $TAG -m "this a test"
echo "push to remote"
git push --follow-tags
echo "Waiting 30 secs..."
sleep 30
open http://35.229.26.224/