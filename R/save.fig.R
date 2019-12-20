#' Save plots to tikz figures
#' 
#' wrapper over tikzDevice 
#' 
#' example:
#' p <- ggplot(aes(...)) + geom_whatever()
#' save.fig(p, "figures/plot1.tex")
#' 
#' @export
save.fig  <- function(plt, path, ...) { 
  tikz(file = path, ...)
  print(plt)
  dev.off()
  plt
}