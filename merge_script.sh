#echo "$TRAVIS_BRANCH"
#if [ "$TRAVIS_BRANCH" != "test" ]; then
#    exit 0;
#    echo "stuff"
#fi
#
#echo "here"

#export GIT_COMMITTER_EMAIL=''
#export GIT_COMMITTER_NAME=''
#echo "$TRAVIS_REPO_SLUG"
#export GIT_TOKEN='57ab2e92d63d5f0a81483825d95ebac17d43b5c1'
#
#echo "here 2"

git branch -d master || true
git checkout --detach
git fetch origin '+refs/heads/*:refs/heads/*'
git fetch --all
git branch -a
git checkout master || exit
#echo "here 3"
git merge "$TRAVIS_COMMIT" || exit
#echo "4"
git push https://$GIT_USERNAME:$GIT_PWD@github.com/$TRAVIS_REPO_SLUG.git
#git push --set-upstream origin master
#echo "done"