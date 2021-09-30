book sm
gitbook build
git add .
git commit -m $1
git push origin
git branch -D gh-pages
git checkout -b gh-pages
echo ".idea/" > .gitignore
git add .
git commit -m $1
git push origin --delete gh-pages
git subtree push --prefix=_book origin gh-pages
git checkout master
git branch -D gh-pages