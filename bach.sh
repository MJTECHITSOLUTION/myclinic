while read -r line;
do
   grep greengoplatform.com $line
done < files
