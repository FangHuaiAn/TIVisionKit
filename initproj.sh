#chmod u+x initproj.sh 
cp ~/Documents/Projects/gitignore.txt .gitignore
git init
git add .gitignore
git commit -m "add gitignore"
echo "# Project Description" >> README.md
git add .
git commit -m "add project files"
pod init
pod install
git add .
git commit -m "add pod"