#human
#wget http://ftp.ensembl.org/pub/release-104/gtf/homo_sapiens




#bioawk -c gff '$feature=="transcript" {print $attribute}' <(gunzip -c gencode.v31.primary_assembly.annotation.gtf.gz) | awk -F ' ' '{print substr($4,2,length($4)-3) "\t" substr($2,2,length($2)-3)}' - > txp2gene.tsv
bioawk -c gff '$feature=="transcript" {print $attribute}' <(gunzip -c gencode.v31.primary_assembly.annotation.gtf.gz)
