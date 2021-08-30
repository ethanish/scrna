#download fastq data for index
wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_31/gencode.v31.pc_transcripts.fa.gz

#make index pre-requirement data
salmon index -i index -k 31 --gencode -p 4 -t gencode.v31.pc_transcripts.fa.gz

#donwload gtf data for txp2gene.tsv
wget ftp://ftp.ebi.ac.uk/pub/databases/gencode/Gencode_human/release_31/gencode.v31.primary_assembly.annotation.gtf.gz

#make tsv pre-requirement data
#bioawk -c gff '$feature=="transcript" {print $attribute}' <(gunzip -c gencode.v31.primary_assembly.annotation.gtf.gz) | awk -F ' ' '{print substr($4,2,length($4)-3) "\t" substr($2,2,length($2)-3)}' - > txp2gene.tsv

#but not allowd "$attribute" column, so used $9 / it was $group

bioawk -c gtf '$feature=="transcript" {print $group}' <(gunzip -c gencode.v31.primary_assembly.annotation.gtf.gz) | awk -F ' ' '{print substr($4,2,length($4)-3) "\t" substr($2,2,length($2)-3)}' - > txp2gene.tsv

#donwload fastq data 32GB
wget https://cg.10xgenomics.com/samples/cell-exp/2.1.0/pbmc4k/pbmc4k_fastqs.tar
