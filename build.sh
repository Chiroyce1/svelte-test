cd $GITHUB_WORKSPACE
git config user.name "Chiroyce1"
git config user.email "Chiroyce1@users.noreply.github.com"

npm run build
git checkout -b gh-pages
git commit -am "Built"
git checkout -b main
rm -rf public/build/

git add . # since new files are generated we need to include them
echo "[commit.sh]: committing locally"
git commit -m "Build run" -a
echo "[commit.sh]: pushing to github"
git push
echo "completed commit.sh!!"