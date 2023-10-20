touch ~/test
while read line
do
	first=`echo $line |cut -c 1`
	if [ $first==[AGCT] ]
	then
		echo ${line} |cut -c11-
	else
		echo ${line}
	fi
done < ~/ICA1/fastq/Tco-999_2.fq
