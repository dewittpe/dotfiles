.First <- function() {
  if (interactive()) {
    options(repos = c(CRAN = "https://cran.rstudio.com",
                      BIOC = "https://bioconductor.org/packages/release/bioc/"),
            datatable.print.topn = 4L,
            datatable.print.nrows = 10,
            datatable.print.class = TRUE)
    library(colorout)
  }
}

q <- quit <- function(save = "no", ...) {
  base::quit(save = save, ...)
}
