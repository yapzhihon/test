echo "sd"

echo "$TRAVIS_BRANCH"
#if [ "$TRAVIS_BRANCH" != "test" ]; then
#    exit 0;
#    echo "stuff"
#fi
#
#echo "here"

export GIT_COMMITTER_EMAIL=''
export GIT_COMMITTER_NAME=''
echo "$TRAVIS_REPO_SLUG"
export GIT_TOKEN='57ab2e92d63d5f0a81483825d95ebac17d43b5c1'

echo "here 2"

git pull --all
git branch -a
git checkout master || exit
echo "here 3"
git merge "$TRAVIS_COMMIT" || exit
echo "4"
git push
echo "done"