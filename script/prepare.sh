echo 'db="""' > ./endpoint/main.py
cat ./data/*.csv >> ./endpoint/main.py
echo '"""' >> ./endpoint/main.py
cat ./endpoint/main.t.py >> ./endpoint/main.py

cat ./README.t.md > ./README.md
echo "Last updated: " `date` >> ./README.md
echo "" >> README.md
echo "*"`ls ./data | grep csv`"*" >> ./README.md
echo "\`\`\`" >> ./README.md
head ./data/*.csv >> ./README.md
echo "\`\`\`" >> ./README.md
