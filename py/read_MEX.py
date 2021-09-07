import csv
import gzip
import os
import scipy.io

out_dir = "/data1/home/histidine/project/scrna/cellranger_arc_test/cellranger_arc_test/outs"
#1. use filtered
matrix_dir = out_dir + "/filtered_feature_bc_matrix"
#2. use raw
matrix_dir = out_dir + "/raw_feature_bc_matrix"

mat = scipy.io.mmread(os.path.join(matrix_dir, "matrix.mtx.gz"))
df = mat.toarray()

#features_path = os.path.join(matrix_dir, "features.tsv.gz")
#feature_ids = [row[0] for row in csv.reader(gzip.open(features_path), delimiter="\t")]
#gene_names = [row[1] for row in csv.reader(gzip.open(features_path), delimiter="\t")]
#feature_types = [row[2] for row in csv.reader(gzip.open(features_path), delimiter="\t")]
#barcodes_path = os.path.join(matrix_dir, "barcodes.tsv.gz")
#barcodes = [row[0] for row in csv.reader(gzip.open(barcodes_path), delimiter="\t")]

print(df)
