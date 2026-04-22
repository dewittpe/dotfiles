.First <- function() {
  if (interactive()) {
    options(repos = c(CRAN = "https://cran.rstudio.com",
                      BIOC = "https://bioconductor.org/packages/release/bioc/")
    ,
            datatable.print.topn = 4L,
            datatable.print.nrows = 10,
            datatable.print.class = TRUE
    )
    if (requireNamespace("colorout", quietly = TRUE)) {
      library(colorout)
    } else {
      packageStartupMessage(
        paste(
          "Package 'colorout' is not installed.",
          "Install it from GitHub with:",
          "remotes::install_github('jalvesaq/colorout')"
        )
      )
    }
  }
}
