git status
git add .
now=$(date +"%c")
git commit -m "update project at $now"
git push
echo "Pushed to GitHub repository"