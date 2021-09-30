book sm
gitbook build
git add .
git commit -m $1
git push origin
git branch -D gh-pages
git checkout -b gh-pages
git add .
git commit -m $1
git subtree push --prefix=_book -f origin gh-pages
git checkout master
git branch -D gh-pages