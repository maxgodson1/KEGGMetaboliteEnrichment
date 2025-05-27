#' Title: Draw KEGG dotplot
#'
#' @description
#' Draw a barplot of KEGG enrichment results returned by `kegg_metabolite_enrichment()`.
#'
#' @param results A data.frame returned from kegg_metabolite_enrichment().
#' @return A ggplot2 object.
#' @export
keggbar <- function(results) {
  ggplot(results, aes(x = reorder(Description, p.adjust),
                      y = as.numeric(sub("/.*", "", GeneRatio)),
                      fill = p.adjust)) +
    geom_bar(stat = "identity") +
    coord_flip() +
    scale_fill_gradient(low = "blue", high = "red") +
    labs(x = "Pathway", y = "Gene Count",
         fill = "p.adjust") +
    theme_minimal() +
    theme(axis.text.y = element_text(size = 8))
}
