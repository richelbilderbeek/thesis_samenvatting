# Create the phylogeny used in the Dutch summary

library(ape)
library(ggtree)

phylogeny <- ape::read.tree(text = "((mens:1,aap:1):1,dolfijn:2):1;")

ggtree::ggtree(phylogeny, cex = 2) +
  ggtree::geom_tiplab(
    geom = "label", cex = 10.0, offset = 0.5, hjust = .8
  ) +
  ggtree::geom_rootedge(cex = 2) +
  ggplot2::ggsave("fylogenie.png")

