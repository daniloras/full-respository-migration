read -p "$* How URL Origin Repositoy? " repository

read -p "$* How URL Destiny Repository? " destiny

read -p "$* How Name Folder Original Repository? " dir

git clone $repository

cd "${dir}"

cp ../getAllBranches.sh getAllBranches.sh

chmod +x getAllBranches.sh

sh getAllBranches.sh

git branch -v

git remote set-url origin $destiny

git remote -v

git push --mirror

cd ..

rm -rf $dir

echo "Repository Cloned Successfully!!!"