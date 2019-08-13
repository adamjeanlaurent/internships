#!/bin/bash
read -e -p "Commit message: " desc  

# Git
git pull

# Python scripts
echo Start to update
cd ./venv
source Scripts/activate
cd ..
python changing_encoding.py
python sort.py
python convert_json.py
python convert_md.py
python combine.py
echo Updated

# Git
git commit -am "$desc"
git push origin master

read -p "all set: press enter to continue"