#Download Cell Ranger Arc 2.0.0 (May, 3, 2021)
#https://support.10xgenomics.com/single-cell-multiome-atac-gex/software/downloads/latest
wget -O cellranger-arc-2.0.0.tar.gz "https://cf.10xgenomics.com/releases/cell-arc/cellranger-arc-2.0.0.tar.gz?Expires=1630769288&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1hcmMvY2VsbHJhbmdlci1hcmMtMi4wLjAudGFyLmd6IiwiQ29uZGl0aW9uIjp7IkRhdGVMZXNzVGhhbiI6eyJBV1M6RXBvY2hUaW1lIjoxNjMwNzY5Mjg4fX19XX0_&Signature=Hh4eOb-BG8UUPdCfZ2uyugr56oY1A0zsyHwYUdzYUn6e61vBzNl2yUUiZcrOuSd2C2XNu60qdri9DdjOVhQ1K0xH6p8Q43a23~Wz4ZtANFv1XzSz2laZYSK4hWCuMCTREb5~-VuWYFN46rz-Y06aEEEhZbmX0u-cbEuZweQYlWSVySyMP7YxOVU6wcknuapCTmwbO5BHOo4Ou6jj3Z69-JxudgPNwZXEnaIgivnyFJHWjhS-AbD7lXZaJnnDg4pbZr9lDEHQ3fU6fejajNOjVi8-dBtUqeMyFOTiD0bNm-qhO~LT-ExTz~tIBRUNyndJdo7LbaPYsQqcYDHydBCJvw__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
#Human reference
#GRCh38 Reference - 2020-A-2.0.0 (May 3, 2021)
wget https://cf.10xgenomics.com/supp/cell-arc/refdata-cellranger-arc-GRCh38-2020-A-2.0.0.tar.gz

#Mouse reference
#mm10 Reference - 2020-A-2.0.0 (May 3, 2021)
wget https://cf.10xgenomics.com/supp/cell-arc/refdata-cellranger-arc-mm10-2020-A-2.0.0.tar.gz

tar -zxvf refdata-cellranger-arc-GRCh38-2020-A-2.0.0.tar.gz
tar -zxvf refdata-cellranger-arc-mm10-2020-A-2.0.0.tar.gz

#Download data
#https://www.10xgenomics.com/resources/datasets/10-k-human-pbm-cs-multiome-v-1-0-chromium-x-1-standard-2-0-0
# Input Files

curl -O https://s3-us-west-2.amazonaws.com/10x.files/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_fastqs.tar
curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_library.csv

tar xf 10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Mltiome_nextgem_Chromium_X_fastqs.tar

# Output Files
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_cloupe.cloupe
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_analysis.tar.gz
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_web_summary.html
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_summary.csv
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_per_barcode_metrics.csv
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_filtered_feature_bc_matrix.tar.gz
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_filtered_feature_bc_matrix.h5
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_raw_feature_bc_matrix.tar.gz
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_raw_feature_bc_matrix.h5
#curl -O https://s3-us-west-2.amazonaws.com/10x.files/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_gex_possorted_bam.bam
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_gex_possorted_bam.bam.bai
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_gex_molecule_info.h5
#curl -O https://s3-us-west-2.amazonaws.com/10x.files/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_possorted_bam.bam
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_possorted_bam.bam.bai
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_fragments.tsv.gz
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_fragments.tsv.gz.tbi
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_peaks.bed
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_cut_sites.bigwig
#curl -O https://cf.10xgenomics.com/samples/cell-arc/2.0.0/10k_PBMC_Multiome_nextgem_Chromium_X/10k_PBMC_Multiome_nextgem_Chromium_X_atac_peak_annotation.tsv

