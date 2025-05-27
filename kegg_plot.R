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
keggdot <- function(results) {
  ggplot(results, aes(x = reorder(Description, p.adjust),
                      y = GeneRatio,
                      size = Count,
                      color = p.adjust)) +
    geom_point(alpha = 0.8) +
    coord_flip() +
    scale_color_gradient(low = "blue", high = "red") +
    labs(x = "Pathway", y = "GeneRatio",
         color = "p.adjust", size = "Count") +
    theme_minimal() +
    theme(axis.text.y = element_text(size = 8))
}
