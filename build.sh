cd $GITHUB_WORKSPACE
git config user.name "Chiroyce1"
git config user.email "Chiroyce1@users.noreply.github.com"

echo "Installing dependecies..."
npm install
echo "Installed dependecies!"
echo "Building app..."
npm run build
echo "Built app!"

git add . # since new files are generated we need to include them
echo "[commit.sh]: committing locally"
git commit -m "Build Run" -a
echo "[commit.sh]: pushing to github"
git push --set-upstream origin gh-pages # please work git all i need you to do is build app on gh-pages and not on main ok?
echo "completed commit.sh!!"