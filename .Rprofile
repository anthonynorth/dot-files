# repos
options(repos = structure(c(CRAN = "https://cran.rstudio.com")))
if (.Platform$OS.type == "unix") {
  options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/all/__linux__/focal/latest"))
}

# tidyverse & tidymodels
options(tidyverse.quiet = TRUE, tidymodels.quiet = TRUE)

# tinytex
options(tinytex.engine_args = "-shell-escape")

# vscode-R
if (interactive() && Sys.getenv("TERM_PROGRAM") == "vscode") {
  options(vsc.viewer = FALSE, vsc.browser = FALSE)
}

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
