#if [ "$TRAVIS_BRANCH" = "staging" ]; then
#  echo "trigerred"
#  exit 0;
#fi

#git branch -d master || true
git branch -a
git checkout --detach
git fetch origin '+refs/heads/*:refs/heads/*'
git fetch --all
git branch -a
#git checkout $TRAVIS_BRANCH || exit

#git merge $TRAVIS_COMMIT || exit
git checkout $TRAVIS_BRANCH

git merge $TRAVIS_COMMIT
exit 1

#git push https://$GIT_USERNAME:$GIT_PWD@github.com/$TRAVIS_REPO_SLUG.git
#git push --set-upstream origin master
#echo "done"