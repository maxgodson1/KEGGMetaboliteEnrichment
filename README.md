<img width="282" alt="image" src="https://github.com/user-attachments/assets/6112735b-513a-4fb6-85e3-150adadf923d" />

A convenient kegg enrichment tool for metabolomic data
<img width="1070" alt="image" src="https://github.com/user-attachments/assets/3af66efd-1e5a-4b1b-95db-558197c5f062" />

# 🔧 Installation
Install the package directly from GitHub using `devtools`:
If you don't have devtools installed
install.packages("remotes")
remotes::install_github("r-lib/devtools")

# Install from GitHub
devtools::install_github("zhuangshaobio/KeggMetaboliteEnrichment")
#Quick Start
library(KeggMetaboliteEnrichment)

# Define a vector of KEGG compound IDs
keggid <- c("C00160", "C01595", "C00236")

# Perform enrichment analysis
res <- kegg_metabolite_enrichment(KEGGid = keggid, species = "pti")  # For applicable species information refer to https://www.kegg.jp/kegg/tables/br08606.html

# Plot dot plot
keggdot(res)

# Plot bar plot
keggbar(res)
