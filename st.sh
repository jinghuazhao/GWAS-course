# 24-4-2019 JHZ

git add .gitignore
git commit -m ".gitignore"
git add README.md
git commit -m "README"
git add doc
git commit -m "Documents and auxiliary files"
for i in $(seq 5)
do
    git add $i
    git commit -m "Day $i"
done
git add st.sh
git commit -m "st.sh"
git push
