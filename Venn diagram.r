## Venn diagram with gene list
# load libraries
library(ggVennDiagram)
library(tidyverse)

# load data 
df_KO_Uni_1 <-read_csv("df_KO_Uni_1.csv") 
df_KO_Uni_2 <-read_csv("df_KO_Uni_2.csv") 
df_KO_Uni_3 <-read_csv("df_KO_Uni_3.csv") 
df_KO_Uni_27 <-read_csv("df_KO_Uni_27.csv") 
df_RemovedX_250 <-read_csv("df_RemovedX_250.csv") 

# select Gene_Name column from individual data sets.
df_KO_Uni_1_gene <-df_KO_Uni_1$Gene_Name
df_KO_Uni_2_gene <-df_KO_Uni_2$Gene_Name
df_KO_Uni_3_gene <-df_KO_Uni_3$Gene_Name
df_KO_Uni_27_gene <- df_KO_Uni_27$Gene_Name
df_RemovedX_gene <- df_RemovedX_250$Gene_Name

# create a list 
gene_List <- list(df_KO_Uni_1_gene,df_KO_Uni_2_gene,df_KO_Uni_3_gene,df_KO_Uni_27_gene,df_RemovedX_gene)

Venn <- ggVennDiagram(gene_List, 
    label = "count", 
    edge_size = 0.4, 
    category.names = c("KO_H3K4me1 specific","KO_H3K4me2 specific", "KO_H3K4me3 specific", "KO_H3K27ac specific" ,"RemovedX1 Dir Tar")) +
    scale_fill_distiller(palette = "PuBuGn")

Venn 
