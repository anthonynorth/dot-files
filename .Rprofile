# repos
options(repos = structure(c(CRAN = "https://cran.rstudio.com")))
if (.Platform$OS.type == "unix") {
  options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/all/__linux__/bionic/latest"))
}

# vscode-R
options(vsc.viewer = FALSE, vsc.browser = FALSE)

# tinytex
options(tinytex.engine_args = "-shell-escape")

# httpgd
if (interactive() && "httpgd" %in% .packages(all.available = TRUE)) {
  if (Sys.getenv("TERM_PROGRAM") == "vscode") {
    options(vsc.plot = FALSE)
    options(device = function(...) {
      httpgd::httpgd(silent = TRUE)
      .vsc.browser(httpgd::httpgdURL(), viewer = "Beside")
    })
  } else {
    options(device = function(...) {
      httpgd::httpgd(silent = TRUE)
      browseURL(httpgd::httpgdURL())
    })
  }
}
