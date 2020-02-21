@echo off

git clone %2 --bare %1
cd %1
git remote add github %3
git push github --mirror
cd ..

echo "this is %1 one"