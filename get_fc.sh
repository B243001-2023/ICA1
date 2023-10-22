touch ~/ICA1/fold_change
echo -n '' > fold_change

for file in `ls ~/ICA1/bed_output`
do
  echo $file
  awk -F '	' '{print $6}' ~/ICA1/bed_output/$file > ~/ICA1/temp_$file
done

paste -d '	' ~/ICA1/temp_* > ~/ICA1/fold_change

rm ~/ICA1/temp_*
