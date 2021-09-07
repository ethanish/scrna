SHARE="/data1/home/histidine/project/scrna/cellranger_arc_test/10k_PBMC_Multiome_nextgem_Chromium_X_fastqs/10k_PBMC_Multiome_nextgem_Chromium_X_gex"
OUTPUT="/data1/home/histidine/project/scrna/cellranger_arc_test/compare_salmon"
T2G_DIR="/data1/home/histidine/project/scrna/salmon_test"
FA_DIR="/data1/home/histidine/project/scrna/salmon_test"
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
	salmon index -t $FA_DIR"/gencode.v31.pc_transcripts.fa.gz" -i $INDEXD  --gencode -p 64
fi

salmon alevin	-i $INDEXD \
				-l ISR \
				--chromium \
				-p 64 \
				-1	$SHARE/10k_PBMC_Multiome_nextgem_Chromium_X_gex_S2_L001_R1_001.fastq.gz \
					$SHARE/10k_PBMC_Multiome_nextgem_Chromium_X_gex_S2_L002_R1_001.fastq.gz \
					$SHARE/10k_PBMC_Multiome_nextgem_Chromium_X_gex_S2_L003_R1_001.fastq.gz \
					$SHARE/10k_PBMC_Multiome_nextgem_Chromium_X_gex_S2_L004_R1_001.fastq.gz \
				-2	$SHARE/10k_PBMC_Multiome_nextgem_Chromium_X_gex_S2_L001_R2_001.fastq.gz \
					$SHARE/10k_PBMC_Multiome_nextgem_Chromium_X_gex_S2_L002_R2_001.fastq.gz \
					$SHARE/10k_PBMC_Multiome_nextgem_Chromium_X_gex_S2_L003_R2_001.fastq.gz \
					$SHARE/10k_PBMC_Multiome_nextgem_Chromium_X_gex_S2_L004_R2_001.fastq.gz \
				-o $SALMONQ \
				--tgMap $T2G_DIR"/txp2gene.tsv" \
				--dumpMtx 

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

