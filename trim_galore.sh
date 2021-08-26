SHARE="/data1/home/histidine/project/scrna/cambridge_workshop/Share"

OUTPUT="/data1/home/histidine/project/scrna/OUTPUT"
if [ ! -d "$OUTPUT" ]; then
	mkdir $OUTPUT;
fi

TEST=$OUTPUT"/test1"
if [ ! -d "$TEST" ]; then
	mkdir $TEST
fi



TRIM=$TEST"/fastqc_trimmed_results"
if [ ! -d "$TRIM" ]; then
	mkdir $TRIM
fi

#--nextera
#--illumina


trim_galore --nextera -o $TRIM $SHARE/ERR522959_1.fastq $SHARE/ERR522959_2.fastq
