SHARE="/data1/home/histidine/project/scrna/Data/pbmc4k_10x/fastqs"

OUTPUT="/data1/home/histidine/project/scrna/salmon_test"
if [ ! -d "$OUTPUT" ]; then
	mkdir $OUTPUT;
fi

TEST=$OUTPUT"/test_OUTPUT"
if [ ! -d "$TEST" ]; then
mkdir $TEST
fi

SALMONQ=$TEST"/salmon_alevin2"
if [ ! -d "$SALMONQ" ]; then
mkdir $SALMONQ
fi

#if index not exists
INDEXD=$TEST"/index"
if [ ! -d "$INDEXD" ]; then
salmon index -t $OUTPUT"/gencode.v31.pc_transcripts.fa.gz" -i $INDEXD -k 31 --gencode -p 16 
fi

#salmon alevin -l ISR -i $INDEXD --chromium -p 16 -1 $SHARE/pbmc4k_S1_L001_R1_001.fastq.gz -2 $SHARE/pbmc4k_S1_L001_R2_001.fastq.gz -o $SALMONQ --tgMap $OUTPUT"/txp2gene.tsv"
salmon alevin -l ISR -i $INDEXD --chromium -p 16 -1 $SHARE/pbmc4k_S1_L001_R1_001.fastq.gz -2 $SHARE/pbmc4k_S1_L001_R2_001.fastq.gz -o $SALMONQ --tgMap $OUTPUT"/txp2gene.tsv" --dumpMtx

# --dumpMtx
# for human-readable file quants-mat.mtx.gz
# -i $INDEXD
# -l ISR
# -1 1.fastq
# -2 2.fastq
# -o output

# --dropseq / --chromium / --chromiumV3 : protocol 

#salmon alevin -l ISR -1 cb.fastq.gz -2 reads.fastq.gz --chromium  -i salmon_index_directory -p 10 -o alevin_output --tgMap txp2gene.tsv
#salmon alevin -l ISR -1 lib_A_cb.fq lib_B_cb.fq -2 lib_A_read.fq lib_B_read.fq
#salmon alevin -l ISR -1 lib_A_cb.fq.gz lib_B_cb.fq.gz -2 lib_A_read.fq.gz lib_B_read.fq.gz






