#!/bin/bash
rm -R fol_1
rm -R fol_2
mkdir fol_1
mkdir fol_2
cd fol_1
touch 1_1.txt
touch 1_2.txt
touch 1_3.txt
cd ../fol_2
touch 2_1.txt
touch 2_2.txt
touch 2_3.txt
cd ..
touch .gitignore
echo ".gitignore" >> .gitignore
echo fol_1 >> .gitignore
echo fol_2 >> .gitignore
chmod 600 fol_1/1_1.txt
chmod 600 fol_1/1_3.txt
chmod 600 fol_2/2_1.txt
chmod 600 fol_2/2_3.txt
chmod 000 fol_1/1_2.txt
chmod 000 fol_2/2_2.txt
touch READ.md
echo "#Week 2 Lab - Bash & Git" > READ.md
echo "[devops-lab-2](https://github.com/RubyK01/devopslab2.git)" >> READ.md
echo --- >> READ.md
echo "To run the script.sh run: \ 'bash script.sh \ '" >> READ.md

git init
git add .
git commit -m "final commit"
git remote add origin https://github.com/RubyK01/devopslab2.git
git branch -M main
git push -u origin main