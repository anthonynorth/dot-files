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

# serve htmlwidgets with webserver
# credit: @milesmcbain
if (interactive() && all(c("servr", "withr") %in% .packages(all.available = TRUE))) {
  cloud_view <- function(obj) {
    withr::with_options(
      list(viewer = function(url, ...) {
        get_url_dir <- function(url) gsub("file://|/index.html", "", url)
        server <- servr::httd(
          dir = get_url_dir(url),
          verbose = TRUE,
          browser = FALSE
        )

        .vsc.browser(server$url, ...)
      }),
      print(obj)
    )
  }
}
