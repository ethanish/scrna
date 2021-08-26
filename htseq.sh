SHARE="/data1/home/histidine/project/scrna/cambridge_workshop/Share"

OUTPUT="/data1/home/histidine/project/scrna/OUTPUT"
if [ ! -d "$OUTPUT" ]; then
	mkdir $OUTPUT;
fi

TEST=$OUTPUT"/test1"
if [ ! -d "$TEST" ]; then
	mkdir $TEST
fi



HTSEQ=$TEST"/htseq_results"
if [ ! -d "$HTSEQ" ]; then
	mkdir $HTSEQ
fi


python py/htseq.py $SHARE/ERR522959_1.fastq $SHARE/ERR522959_2.fastq $HTSEQ

