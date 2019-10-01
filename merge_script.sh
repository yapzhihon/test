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

echo "here 2"

git checkout master || exit
echo "here 3"
git merge "$TRAVIS_COMMIT" || exit
echo "4"
git push
echo "done"