.stargazer <- function(...) { capture.output(stargazer::stargazer(...)) }

#' Save Regression outputs
#' 
#' wrapper over stargazer-booktabs with some defaults
#' 
#' example:
#' lm(y ~ x0 + x1 + x2) %>% save.reg("tables/reg1.tex")
#' 
#' @export
save.reg  <- function(data, path, ...) {
  write(.stargazer(data, ...), path)
  data
}