options(knitr.table.format = "latex")

#' Save Tables
#' 
#' wrapper over kable that automatically sets labels in output tex
#' defaults to booktabs
#' 
#' example:
#' my.df %>% select(col1, col2) %>% save.tbl("tables/table1.tex")
#' 
#' @export
save.tbl  <- function(data, path, label = NULL, ...) { 
  if (is.null(label)) { 
    label = str_replace(basename(path), ".tex", "")
  }
  opts_current$set(label = label)
  write(kable(data, booktab=T, ...) %>% 
          kable_styling(latex_options=c("HOLD_position")), 
        path)
  data
}