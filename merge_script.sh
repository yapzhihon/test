#if [ "$TRAVIS_BRANCH" = "staging" ]; then
#  echo "trigerred"
#  exit 0;
#fi

#git branch -d master || true
echo "git branch -a"
git branch -a

echo "git checkout --detach"
git checkout --detach

echo "git fetch origin '+refs/heads/*:refs/heads/*'"
git fetch origin '+refs/heads/*:refs/heads/*'

echo "git fetch --all"
git fetch --all

echo "git branch -a"
git branch -a
#git checkout $TRAVIS_BRANCH || exit

#git merge $TRAVIS_COMMIT || exit

echo "git checkout $TRAVIS_BRANCH"
git checkout $TRAVIS_BRANCH

echo "git merge $TRAVIS_COMMIT"
git merge $TRAVIS_COMMIT
exit 1

#git push https://$GIT_USERNAME:$GIT_PWD@github.com/$TRAVIS_REPO_SLUG.git
#git push --set-upstream origin master
#echo "done"