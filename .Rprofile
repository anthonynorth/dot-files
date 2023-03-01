# repos
options(repos = structure(c(CRAN = "https://cran.rstudio.com")))
if (.Platform$OS.type == "unix") {
  options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/cran/__linux__/jammy/latest"))
  options(HTTPUserAgent = sprintf("R/%s R (%s)", getRversion(), paste(getRversion(), R.version["platform"], R.version["arch"], R.version["os"])))
}

# tidyverse & tidymodels
options(tidyverse.quiet = TRUE, tidymodels.quiet = TRUE)

# tinytex
options(tinytex.engine_args = "-shell-escape")

# vscode-R
if (interactive() && Sys.getenv("TERM_PROGRAM") == "vscode") {
  options(vsc.viewer = FALSE, vsc.browser = FALSE)
  options(languageserver.lint_cache = TRUE)
  Sys.setenv(R_LANGSVR_POOL_SIZE = 1)
}

# paint
options(
  paint_mask_print = TRUE,
  paint_remind_mask_print = FALSE,
  paint_max_width = 200
)

if ("paint" %in% .packages(all.available = TRUE)) {
  paint::mask_print()
}

# serve htmlwidgets with servr
local({
  has_cloudview <- "cloudview" %in% .packages(all.available = TRUE)
  is_ssh <- Sys.getenv("SSH_CONNECTION") != ""
  if (interactive() && is_ssh && has_cloudview) cloudview::enable_cloudview()
})
