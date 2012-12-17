files=$(ls ~/.bash_profile.d/*.sh 2>/dev/null)
for file in ${files}; do
  source ${file}
done
