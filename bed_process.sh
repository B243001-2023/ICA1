if [ ! -d "~/ICA1/bed_output_d" ]; then
  mkdir -p ~/ICA1/bed_output_d
fi

IFS='	'

grep '^T' ~/ICA1/Tco2.fqfiles > ~/ICA1/nh_Tco2.fqfiles

while read SampleName SampleType Replicate Time Treatment a b
#a and b is a useless variable to accept useless part
do
 string1=`echo ${SampleName} |cut -c1-3` 
 string2=`echo ${SampleName} |cut -c4-`
 if [ $Replicate -ne 0 ]; then
  echo $SampleName $Replicate $Time $Treatment

  if [ ! -d ~/ICA1/bed_output_d/$SampleType'_'$Time'_'$Treatment ]; then
   mkdir -p ~/ICA1/bed_output_d/$SampleType'_'$Time'_'$Treatment
  fi

  awk -F '	' -v Replicate="$Replicate" '{if($5!=0) print $1, $2, $3, $4, $5, $6/Replicate, $7, $8 $9; else print $0}'\
	  ~/ICA1/bed_output/cut_$string1-$string2.txt |grep -v 'rRNA'\
	  > ~/ICA1/bed_output_d/$SampleType'_'$Time'_'$Treatment/$SampleName.txt
 else
  cat ~/ICA1/bed_output/cut_$string1-$string2.txt |grep -v 'rRNA' > ~/ICA1/bed_output_d/$SampleType'_'$Time'_'$Treatment/$SampleName.txt
 fi
done < ~/ICA1/nh_Tco2.fqfiles

