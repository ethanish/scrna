SHARE="/data1/home/histidine/project/scrna/cambridge_workshop/Share"

OUTPUT="/data1/home/histidine/project/scrna/OUTPUT"
if [ ! -d "$OUTPUT" ]; then
	mkdir $OUTPUT;
fi

TEST=$OUTPUT"/test1"
if [ ! -d "$TEST" ]; then
mkdir $TEST
fi

SALMONQ=$TEST"/salmon_quant"
if [ ! -d "$SALMONQ" ]; then
mkdir $SALMONQ
fi

#if index not exists
INDEXD=$TEST"/index"
if [ ! -d "$INDEXD" ]; then
salmon index -t $SHARE/ERR522959_1.fastq -i $INDEXD
fi

salmon alevin -l ISR -i $INDEXD --dropseq -1 $SHARE/ERR522959_1.fastq -2 $SHARE/ERR522959_2.fastq -o $SALMONQ -tgMap

# -i $INDEXD
# -l ISR
# -1 1.fastq
# -2 2.fastq
# -o output

# --dropseq / --chromium / --chromiumV3 : protocol 

#salmon alevin -l ISR -1 cb.fastq.gz -2 reads.fastq.gz --chromium  -i salmon_index_directory -p 10 -o alevin_output --tgMap txp2gene.tsv
#salmon alevin -l ISR -1 lib_A_cb.fq lib_B_cb.fq -2 lib_A_read.fq lib_B_read.fq
#salmon alevin -l ISR -1 lib_A_cb.fq.gz lib_B_cb.fq.gz -2 lib_A_read.fq.gz lib_B_read.fq.gz






