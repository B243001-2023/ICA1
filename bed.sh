if [ ! -d "~/ICA1/bed_output" ]; then
  mkdir -p ~/ICA1/bed_output
fi

for i in `ls ~/ICA1/bt2_output_bam/ |cut -d '.' -f1`
do
 touch ~/ICA1/bed_output/$i.txt
 bedtools coverage -b ~/ICA1/bt2_output_bam/$i.bam -a /localdisk/data/BPSM/ICA1/TriTrypDB-46_TcongolenseIL3000_2019.bed > ~/ICA1/bed_output/$i.txt
done


