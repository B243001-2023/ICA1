for file in `ls ~/ICA1/fastq |grep fq$`
do
awk '{
	if ($0 !~ /^[@+]/ && NF>1) {
		sub(/^.{10}/, "")
	}
    print
}' ~/ICA1/fastq/$file > ~/ICA1/fastq_cut2/cut_$file
done
