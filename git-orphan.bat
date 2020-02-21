@echo off

git checkout --orphan %1
git rm -rf .
git commit --allow-empty -m "root commit"
git push origin %1