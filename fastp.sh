SHARE="/data1/home/histidine/project/scrna/cambridge_workshop/Share"

OUTPUT="/data1/home/histidine/project/scrna/OUTPUT"
if [ ! -d "$OUTPUT" ]; then
	mkdir $OUTPUT;
fi

TEST=$OUTPUT"/test1"
if [ ! -d "$TEST" ]; then
mkdir $TEST
fi



FASTP=$TEST"/fastp_results"
if [ ! -d "$FASTP" ]; then
mkdir $FASTP
fi


#gzip -d ../Share/ERR522959_2.fastq.gz
fastp -o $FASTP/out.R1.fq.gz -O $FASTP/out.R2.fq.gz -i $SHARE/ERR522959_1.fastq -I $SHARE/ERR522959_2.fastq -j $FASTP/fastp.json -h $FASTP/fastp.html


#fastp -i Share/ERR522959_1.fastq  -I Share/ERR522959_2.fastq \
#      -o fastp_results/ERR522959_1.fastp.fastq -O fastp_results/ERR522959_1.fastp.fastq \
#      --length_required 20 --average_qual 20 --detect_adapter_for_pe --correction \
#      -h fastp_results/ERR522959.html -j fastp_results/ERR522959.json

