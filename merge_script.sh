if [ "$TRAVIS_BRANCH" = "staging" ]; then
  echo "trigerred"
  exit 0;
fi

git branch -d master || true
git checkout --detach
git fetch origin '+refs/heads/*:refs/heads/*'
git fetch --all
git branch -a
git checkout master || exit
#echo "here 3"
git merge "$TRAVIS_COMMIT" || exit
exit 1

git push https://$GIT_USERNAME:$GIT_PWD@github.com/$TRAVIS_REPO_SLUG.git
#git push --set-upstream origin master
#echo "done"