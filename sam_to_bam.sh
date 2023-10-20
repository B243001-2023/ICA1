for file in `ls ~/ICA1/bt2_output |cut -d '.' -f1`
do
 samtools view -bS ~/ICA1/bt2_output/$file.sam > ~/ICA1/bt2_output_bam/$file.bam
done
#convert sam files to bamfiles

for file in `ls ~/ICA1/bt2_output |cut -d '.' -f1`
do
 samtools sort ~/ICA1/bt2_output_bam/$file.bam -o ~/ICA1/bt2_output_bam/$file.sorted.bam
done


samtools index -M *.sorted.bam
