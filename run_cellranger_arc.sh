#Cell Ranger ARC script

DIRECT="/data1/home/histidine/project/scrna/cellranger_arc_test"
OUT="/data1/home/histidine/project/scrna/cellranger_arc_test"
ID="cellranger_arc_test"
REF_DIR="/data1/home/histidine/project/scrna/cellranger_arc_test/reference"
HUMAN=$REF_DIR"/refdata-cellranger-arc-GRCh38-2020-A-2.0.0"
MOUSE=$REF_DIR"/refdata-cellranger-arc-mm10-2020-A-2.0.0"
REF=$HUMAN
LIBR=$DIRECT"/10k_PBMC_Multiome_nextgem_Chromium_X_library.csv"

cellranger-arc count	--id=$ID \
						--reference=$REF\
						--libraries=$LIBR

#count usage
#cellranger-arc count [FLAGS] [OPTIONS] --id <ID> --reference <PATH> --libraries <CSV>

#--id <ID>
#A unique run id and output folder name [a-zA-Z0-9_-]+ of maximum length 64 characters

#--reference <PATH>
#Path to folder containing cellranger-arc-compatible reference. Reference packages can be
#downloaded from support.10xgenomics.com or constructed using the `cellranger-arc mkref`
#command


#--libraries <CSV>
#Path to 3-column CSV file defining the paths to ATAC and gene expression FASTQ data
#generated with the Chromium Single Cell Multiome ATAC + Gene Expression solution. A
#template CSV would look as follows (blank lines are ignored):

#fastqs,sample,library_type
#/data/HAWT7ADXX/outs/fastq_path,myATAC,Chromatin Accessibility
#/data/H35KCBCXY/outs/fastq_path,myGEX,Gene Expression




