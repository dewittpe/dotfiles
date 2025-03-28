.First <- function() {
  if (interactive()) {
    options(repos = c(CRAN = "https://cran.rstudio.com",
                      BIOC = "https://bioconductor.org/packages/release/bioc/")
    ,
            datatable.print.topn = 4L,
            datatable.print.nrows = 10,
            datatable.print.class = TRUE
    )
    library(colorout)
  }

  if (interactive() && Sys.getenv("NVIM_IP_ADDRESS") != "") {
    Sys.setenv("R_IP_ADDRESS" = trimws(system("hostname -I", intern = TRUE)))
  }
}
