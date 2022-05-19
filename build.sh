cd $GITHUB_WORKSPACE
git config user.name "Chiroyce1"
git config user.email "Chiroyce1@users.noreply.github.com"

npm install
npm run build
git checkout gh-pages # hopefully the -b flag isn't needed for an already existent branch
git checkout main
rm -rf public/build/

git add . # since new files are generated we need to include them
echo "[commit.sh]: committing locally"
git commit -m "Build Run" -a
echo "[commit.sh]: pushing to github"
git push
echo "completed commit.sh!!"