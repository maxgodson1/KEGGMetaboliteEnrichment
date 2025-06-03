<img width="282" alt="image" src="https://github.com/user-attachments/assets/6112735b-513a-4fb6-85e3-150adadf923d" />

A convenient kegg enrichment tool for metabolomic data
<img width="685" alt="image" src="https://github.com/user-attachments/assets/1e4b766e-eaf2-4fda-8f78-e55863ae33ef" />

# 🔧 Installation
Install the package directly from GitHub using `devtools`:
If you don't have devtools installed
install.packages("remotes")
remotes::install_github("r-lib/devtools")

# Install from GitHub
devtools::install_github("zhuangshaobio/KeggMetaboliteEnrichment")
library(KeggMetaboliteEnrichment)

# Define a vector of KEGG compound IDs
keggid <- c("C00160", "C01595", "C00236")

# Perform enrichment analysis
res <- kegg_metabolite_enrichment(KEGGid = keggid, species = "pti")  # For applicable species information refer to https://www.kegg.jp/kegg/tables/br08606.html

# Plot dot plot
keggdot(res)

# Plot bar plot
keggbar(res)
