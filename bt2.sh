while read SampleName SampleType Replicate Time Treatment a b
#a and b is a useless variable to accept useless part
do
  echo $SampleName $Replicate $Time $Treatment 

  if [ ! -d ~/ICA1/fastq_cut2/$SampleType'_'$Time'_'$Treatment ]; then
   mkdir -p ~/ICA1/fastq_cut2/$SampleType'_'$Time'_'$Treatment
  fi
  
  a=`echo $a|cut -d '_' -f1`
  b=`echo $a|cut -d '_' -f1`
  
  echo $a $b
  
  cp ~/ICA1/fastq_cut2/cut_$a'_1'.fq ~/ICA1/fastq_cut2/$SampleType'_'$Time'_'$Treatment/
  cp ~/ICA1/fastq_cut2/cut_$b'_2'.fq ~/ICA1/fastq_cut2/$SampleType'_'$Time'_'$Treatment/
done < ~/ICA1/nh_Tco2.fqfiles


#bowtie2-build /localdisk/data/BPSM/ICA1/Tcongo_genome/* index
#This line is ran in command line, here is the record


for dir in `ls ~/ICA1/fastq_cut2 |grep -v '^c'`
do
 bowtie2 -x ~/ICA1/index/index -1 ~/ICA1/fastq_cut2/$dir/*'_1.fq' -2 ~/ICA1/fastq_cut2/$dir/*'_2.fq' -S ~/ICA1/bt2_output/$dir'.sam'
done

