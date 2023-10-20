for file in `ls ~/ICA1/fastq`
do
  ~/seqtk/seqtk trimfq -b 10 ~/ICA1/fastq/$file > ~/ICA1/fastq_cut/$file
done
