SHARE="/data1/home/histidine/project/scrna/cambridge_workshop/Share"

OUTPUT="/data1/home/histidine/project/scrna/OUTPUT"
if [ ! -d "$OUTPUT" ]; then
	mkdir $OUTPUT;
fi

TEST=$OUTPUT"/test1"
if [ ! -d "$TEST" ]; then
mkdir $TEST
fi



FASTQC=$TEST"/fastqc_results"
if [ ! -d "$FASTQC" ]; then
mkdir $FASTQC
fi


#gzip -d ../Share/ERR522959_2.fastq.gz
fastqc -o $FASTQC $SHARE/ERR522959_1.fastq $SHARE/ERR522959_2.fastq
