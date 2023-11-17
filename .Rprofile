# repos
options(repos = c(CRAN = "https://packagemanager.posit.co/cran/latest"))
# jammy x64: use rspm binaries
if (R.version["os"] == "linux-gnu" && R.version["arch"] == "x86_64" && grepl("22.04.*Ubuntu", Sys.info()["version"])) {
  options(repos = c(CRAN = "https://packagemanager.posit.co/cran/__linux__/jammy/latest"))
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
if ("paint" %in% .packages(all.available = TRUE)) {
  options(
    paint_mask_print = TRUE,
    paint_remind_mask_print = FALSE,
    paint_max_width = 200
  )
  paint::mask_print()

  # HACK: paint wk_vctr & wk_rcrd
  paint_ns <- asNamespace("paint")
  registerS3method("paint_col", "wk_vctr", "paint_col.vctrs_vctr", paint_ns)
  registerS3method("paint_col", "wk_rcrd", "paint_col.vctrs_vctr", paint_ns)
}

# serve htmlwidgets with servr
local({
  has_cloudview <- "cloudview" %in% .packages(all.available = TRUE)
  is_ssh <- Sys.getenv("SSH_CONNECTION") != ""
  if (interactive() && is_ssh && has_cloudview) cloudview::enable_cloudview()
})
