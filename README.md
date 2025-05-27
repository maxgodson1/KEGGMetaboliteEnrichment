# KeggMetaboliteEnrichment
A convenient kegg enrichment tool for metabolomic data
The package automatically retrieves KEGG pathway for a specified species and provides two types of visualization plots (dot plot and bar plot) to help interpret the results.

# 🔧 Installation

You can install the package directly from GitHub using `devtools`:
If you don't have devtools installed
install.packages("remotes")
remotes::install_github("r-lib/devtools")

# Install from GitHub
devtools::install_github("zhhuangshaobio/KeggMetaboliteEnrichment")
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
